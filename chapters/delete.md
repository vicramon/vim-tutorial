# Delete

Actions are the verbs of Vim -- they actually do things. They can be
combined with motions to get the exact result you want. Delete is the first
action I'll be showing you.

## Basic Actions

x deletes the character under the cursor

## Delete

While x is good for simple deletions, what if you need to delete more
things? Enter d.

d<motion> delete

Examples:

dw will delete to a word
db will delete to the beginning of the word
d$ will delete to the the end of the line
d0 will delete to the beginning of the line.

## Delete with t/f

d is extremely powerful when combined when combined with t and f.

df<character> will delete everything from the cursor to (and including) the
first occurence of <character>.

dt<character> will delete everything from the cursor till the first
occurence of <character>.

Examples:

dt. delete till next .
dt) delete till next )
dta delete till next a

dt. is a very useulf command when coding.

## Prepending a Count

dd will delete the current line

You can append a count to the front of this command to repeat it on
multiple lines.

<count>dd will delete <count> lines

You will most often use dd by itself, or 2dd and 3dd to delete a paragraph
or method.

## Delete to end of line

D will delete from your cursor location to the end of the line
