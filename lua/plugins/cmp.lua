return { 
    "hrsh7th/nvim-cmp",
    -- Load plugin when insert mode starts
    event = "InsertEnter",
    dependencies = {
      -- Snippet Engine 
      {
        "L3MON4D3/LuaSnip",
        build = (function()
          -- If platform is Windows, or make command is not available, return 
          if vim.fn.has "win32" == 1 or vim.fn.executable "make" == 0 then
            return
          end
          return "make install_jsregexp"
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          --    See the README about individual language/framework/plugin snippets:
          --    https://github.com/rafamadriz/friendly-snippets
          -- {
          --   "rafamadriz/friendly-snippets",
          --   config = function()
          --     require("luasnip.loaders.from_vscode").lazy_load()
          --   end,
          -- },
        },
      },
      -- Completion Sources
      "saadparwaiz1/cmp_luasnip", -- Completion source that allows nvim-cmp to use snippets from LuaSnip as suggestions.
      "hrsh7th/cmp-nvim-lsp", -- Completion source that allows nvim-cmp to use LSP. 
      "hrsh7th/cmp-path", -- Completion source that uses file and dir paths as source.
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
      -- See `:help cmp`
      local cmp = require "cmp" -- Import cmp module.
      local luasnip = require "luasnip" -- Import luasnip module.

      -- Initialize LuaSnip with an empty configuration table.
      luasnip.config.setup {}

      cmp.setup {
        -- Specify LuaSnip as snippet engine.
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
        -- completion = cmp.config.window.bordered(), -- Border around completion window.
        -- documentation = cmp.config.window.bordered(), -- Border around documentation window.
        },
        completion = { completeopt = "menu,menuone,noinsert" },

        -- For an understanding of why these mappings were
        -- chosen, you will need to read `:help ins-completion`
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        mapping = cmp.mapping.preset.insert {
          -- Select the [n]ext item
          ["<C-n>"] = cmp.mapping.select_next_item(),
          -- Select the [p]revious item
          ["<C-p>"] = cmp.mapping.select_prev_item(),

          -- Scroll the documentation window [b]ack / [f]orward
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),

          -- Accept ([y]es) the completion.
          --  This will auto-import if your LSP supports it.
          --  This will expand snippets if the LSP sent a snippet.
          ["<C-y>"] = cmp.mapping.confirm { select = true },

          -- If you prefer more traditional completion keymaps,
          -- you can uncomment the following lines
          --["<CR>"] = cmp.mapping.confirm { select = true },
          --["<Tab>"] = cmp.mapping.select_next_item(),
          --["<S-Tab>"] = cmp.mapping.select_prev_item(),

          -- Manually trigger a completion from nvim-cmp.
          --  Generally you don"t need this, because nvim-cmp will display
          --  completions whenever it has completion options available.
          ["<C-Space>"] = cmp.mapping.complete {},

          -- Think of <c-l> as moving to the right of your snippet expansion.
          --  So if you have a snippet that"s like:
          --  function $name($args)
          --    $body
          --  end
          --
          -- <c-l> will move you to the right of each of the expansion locations.
          -- <c-h> is similar, except moving you backwards.
          ["<C-l>"] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { "i", "s" }),
          ["<C-h>"] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { "i", "s" }),

          -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
          --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
        },
        -- What completion sources loaded by lazy.nvim above should be used? 
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- Source provided by cmp_luasnip plugin.
          { name = "path" },
          { name = "nvim_lsp_signature_help" },
          { name = "buffer" }
        }
      }
    end
  }
