# ⚠️ DEPRECATED

This plugin has been renamed and moved to [commasemi.nvim](https://github.com/saifulapm/commasemi.nvim).

Please use commasemi.nvim instead as this repository will no longer be maintained.

# chartoggle.nvim

Toogle comma(,), semicolon(;) or other character in neovim end of line from anywhere in the line

## Requirements
Neovim >= 0.5.0

## Installation

[lazy.nvim]:
```lua
{
  'saifulapm/chartoggle.nvim',
  opts = {
    leader = '<LocalLeader>', -- you can use any key as Leader
    keys = {',', ';' } -- Which keys will be toggle end of the line
  },
  keys = {'<LocalLeader>,', '<LocalLeader>;'} -- Lazy loaded
}
```

## how it work

Press `<Localleader>key` = Toogle `key` end of line

Example press `<localleader>,` to toogle `,`

Thank you
