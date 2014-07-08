## Basic Usage

Text objects are Vim's representation of groups of text.

These are some of the text objects you'll use the most:

`w` word

`s` sentence

`p` paragraph

You specify how you want an action to be applied with `a` or `i`:

`a` means all, and the action will be applied to the text object and succeeding white space

`i` means in, and the action will be applied only to the text

This is how you actually use text objects:

`<action><specifier><text object>`

Examples:

`dap` Delete all paragraph.

`ciw` Change in word.


Text objects can do precise work quickly. For example, `dap `is a great way to quickly delete a method.

Note that if you do `caw` instead of `ciw` the succeeding space will be
deleted, which you probably don't want it you're trying to change a word.

## String-based Text objects

A word is small and a paragraph is large, is there anything in between? Of course there is. You can use delimiters to specify text objects.

Available delimiters:

`"`

`'`

`)` or `(`

`]` or `[`

`}` or `{`

Examples:

`ci"` Change inside closest double quote

`ci'` Change inside closest single quote

`ci)` Change inside closest parentheses

`ci]` Change inside closest brackets

`ci}` Change inside closest braces

Note that if you do `ca)` instead of `ci)` then the parentheses will be
deleted.
