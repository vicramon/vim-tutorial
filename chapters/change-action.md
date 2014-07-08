The change action functions exactly the same as delete but with one major difference: it puts you in Insert Mode after doing the delete. This is helpful when you want to delete text then immediately start adding new text.

## Basic Usage

`c<motion>` will change the text specified by that motion.

Examples:

`cw` changes a word.

`c$` changes to the end of a line

`c0` changes to the beginning of a line

## Change to End of Line

`C` will change text to the end of the current line

## Use Change with t and f

`ct<character>` changes up till that character

`cf<character>` changes up to (and including) that character

Examples:

`ct.` change till next .

`ct)` change till next )

`cta` change till next a
