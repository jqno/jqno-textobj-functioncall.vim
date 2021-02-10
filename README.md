# vim-textobj-functioncall

This plugin provides a text object for function calls.

## Usage

A function call looks like this:

`foo.bar(a, b, c)`

This plugin defines the motions `if` and `af`, which have the same behaviour.

## Integrations

Works very nicely with [gcmt/wildfire-vim](https://github.com/gcmt/wildfire.vim). Just add (for instance) the following to your `vimrc`:

`let g:wildfire_objects = ["i'", 'i"', 'i)', 'i]', 'i}', 'if', 'ip', 'it']`
