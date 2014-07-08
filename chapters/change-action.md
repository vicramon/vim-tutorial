# Change Actions

## Basic Usage

Change is like delete, but it puts you in insert mode immediately after
doing the delete. This is helpful when you want to delete text, then
immediatley replace it with something else.

c<motion> will change the text specified by that motion.

Examples:

cw will change a word.
c$ will change to the end of a line
c0 will change to the begining of a line

Note: like D with delete, C will also change to the end of a line

## Using change with t and f

Combining c with t and f is one of the most useful commands in Vim.

ct<character> change up till that character
cf<character> change up to (and including) that character

Examples:

ct. change till next .
ct) change till next )
cta change till next a
