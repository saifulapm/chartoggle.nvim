# chartoggle.nvim

Toogle comma(,), semicolon(;) or other character in neovim

## Requirements
Neovim >= 0.5.0

## Installation

[packer.nvim]:
```lua
use {
  'saifulapm/chartoggle.nvim',
  config = function ()
    require('chartoggle').setup ({
      leader = '<localleader>', -- you can use any key as Leader
      keys = {',', ';' } -- Which keys will be toggle end of the line
    })
  end
}
```

## how it work

Press `<Localleader>key` = Toogle `key` end of line

Example press `<localleader>,` to toogle `,`

Thank you
