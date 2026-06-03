return {
  {
    "daedlock/matugen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("matugen").setup({
        -- Trigger refresh on theme change, optional
        watch = false,
        colors_path = "~/.config/nvim/generated-colors.json",
      })
      vim.cmd.colorscheme("matugen")
    end,
  },
}
