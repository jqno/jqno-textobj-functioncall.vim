# vim-textobj-functioncall

This plugin provides a text object for function calls. You need to have [vim-textobj-user](https://github.com/kana/vim-textobj-user) installed to use it.

## Usage

A function call looks like this:

`foo.bar(a, b, c)`

This plugin defines the motions `if` and `af`.

## Integrations

Works very nicely with [gcmt/wildfire-vim](https://github.com/gcmt/wildfire.vim). Just add the following to your `vimrc`:

`let g:wildfire_objects = ["i'", 'i"', 'i)', 'i]', 'i}', 'if', 'ip', 'it']`
