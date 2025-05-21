return {
  { -- You can easily change to a different colorscheme.
    'loctvl842/monokai-pro.nvim',
    priority = 1000, -- Load this before all other start plugins.
    config = function()
      require('monokai-pro').setup {
        transparent_background = false,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        styles = {
          comment = { italic = true },
          keyword = { italic = true }, -- any other keyword
          type = { italic = true }, -- (preferred) int, long, char, etc
          storageclass = { italic = true }, -- static, register, volatile, etc
          structure = { italic = true }, -- struct, union, enum, etc
          parameter = { italic = true }, -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = 'pro', -- classic | octagon | pro | machine | ristretto | spectrum
        day_night = {
          enable = false, -- turn off by default
          day_filter = 'pro', -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = 'spectrum', -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = 'background', -- underline | background
        background_clear = {
          'toggleterm',
          'telescope',
          'renamer',
          'notify',
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = 'default', -- default | pro
            context_start_underline = false,
          },
        },
        -- Use only one override function without type annotations.
        override = function(cs, p, Config, hp)
          -- Optionally override colors here.
        end,
      }

      -- Load the colorscheme.
      vim.cmd.colorscheme 'monokai-pro'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

