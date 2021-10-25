# chartoggle.nvim

Toogle comma(,), semicolon(;) or other character in neovim

## usage

```lua
require('chartoggle').setup ({
  leader = '<localleader>', -- you can use any key as Leader
  keys = {',', ';' } -- Which keys will be toggle end of the line
})
```

## how it work

Press `<Localleader>key` = Toogle `key` end of line

Example press `,,` to toogle `,` [`, is <Localleader> here`]

Thank you
