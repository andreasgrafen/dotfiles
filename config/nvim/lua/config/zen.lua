require('true-zen').setup {
  modes = {
    ataraxis = {
      shade = 'dark',
      backdrop = 0,
      minimum_writing_area = {
        width = 80,
      },
      padding = {
        left = 32,
        right = 32,
        top = 4,
        bottom = 4,
      },
      quit_untoggles = false,
    },
  },
  integrations = {
    kitty = {
      enabled = true,
    },
  },
}
