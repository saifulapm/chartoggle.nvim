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

Press `<Localleader>` + `key` = Toogle `key` end of line

Example press `,,`, toggle `,` end of the line (Here `,` is the `<Localleader`.
Same as press `,;`, toggle `;` end of line.

Thanks
