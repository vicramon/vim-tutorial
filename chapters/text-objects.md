# Text Objects

## Basic Usage

Text objects are Vim's representation of groups of text.

These are some of the text objects you'll use the most:

a word
s sentence
p paragraph

You specify how you want an action to be applied with all or in:

a all, the action will be applied to the text object AND the delimiters
i in, the action will be applied inside the delimiters

This is how you actually use text objects:

<action><specifier><text object>

Examples:

dap Delete all parauraph.
ciw Change in word.

You will use these two commands frequqently. dap is a great way to quickly
delete a method.

Note that if you do caw instead of ciw the succeeding space will be
deleted, which you probably don't want it you're trying to change a word.


## String-based Text objects

A word is small and a paragraph is large, is there anything in between?  As
a matter of fact there is. You can specify delimeters as text objects.

Additional text objects:

"
'
) or (
] or [
} or {

Examples:

ci" Change inside closest double quote "try it"
ci' Change inside closest single quote 'try it'
ci) Change inside closest parentheses (try it)
ci] Change inside closest brackets [try it]
ci} Change inside closest braces {try it}

Note that if you do ca) instead of ci) then the parentheses will be
deleted.
