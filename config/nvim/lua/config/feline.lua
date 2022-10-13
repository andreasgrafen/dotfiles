local clrs = require('catppuccin.palettes.init').get_palette()
local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup({
  assets = {
    left_separator = '',
    right_separator = '',
    bar = '█',
    mode_icon = ' ',
    git = {
      branch = '  ',
      added = '  ',
      changed = '  ',
      removed = '  ',
    },
  },
  sett = {
    show_modified = true,
    curr_dir = clrs.mauve,
    curr_file = clrs.blue,
  },
  mode_colors = {
    ['n'] = { 'normal', clrs.mauve },
    ['no'] = { 'n-pending', clrs.mauve },
    ['i'] = { 'insert', clrs.green },
    ['ic'] = { 'insert', clrs.green },
    ['t'] = { 'terminal', clrs.green },
    ['v'] = { 'visual', clrs.flamingo },
    ['V'] = { 'v-line', clrs.flamingo },
    ['�'] = { 'v-block', clrs.flamingo },
    ['R'] = { 'replace', clrs.maroon },
    ['Rv'] = { 'v-replace', clrs.maroon },
    ['s'] = { 'select', clrs.maroon },
    ['S'] = { 's-line', clrs.maroon },
    ['�'] = { 's-block', clrs.maroon },
    ['c'] = { 'command', clrs.peach },
    ['cv'] = { 'command', clrs.peach },
    ['ce'] = { 'command', clrs.peach },
    ['r'] = { 'prompt', clrs.teal },
    ['rm'] = { 'more', clrs.teal },
    ['r?'] = { 'confirm', clrs.mauve },
    ['!'] = { 'shell', clrs.green },
  }
})

require('feline').setup({
  components = ctp_feline.get(),
})
