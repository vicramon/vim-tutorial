Actions are the verbs of Vim -- they actually do things. They can be
combined with motions to get the exact result you want. Delete is the first
action I'll show you.

## Basic Actions

`x` deletes the character under the cursor

<div><textarea>
Delete some of this text with x
</textarea></div>

## Delete

While `x` is good for simple character deletions, what if you need to delete more
than that? Use `d` instead:

`d<motion>` will delete text covered by `<motion>`

Examples:

`dw` deletes a word

`db` deletes to the beginning of the word

`d$` deletes to the the end of the line

`d0` deletes to the beginning of the line.

<div><textarea>
Use dw to delete words.

Use d$ to delete to the end of the line.
</textarea></div>

## Delete with t and f

`d` is works really well with `t` and `f`.

`df<character>` will delete everything from the cursor to (and including) the
first occurence of that character

`dt<character>` will delete everything from the cursor till the first
occurence of that character

<div><textarea>
Hit df. to delete to next .

Hit df) to delete to next )

Hit dfa delete to next a

Hit dt. to delete till next .

Hit dt) to delete till next )

Hit dta delete till next a
</textarea></div>

## Prepending a Count

`dd` will delete the current line

You can prepend a count to this command to repeat it on multiple lines:

`<count>dd` will delete `<count>` lines

`2dd` or `3dd` can remove a paragraph, but you're probably better off using a text object for that, which we'll cover shortly.

<div><textarea>
Type dd to delete this enter line

Type 2dd to delete these two lines
Here's a line
</textarea></div>

## Delete to End of Line

`D` will delete from your cursor's location to the end of the line. It's a handy shortcut for `d$`.

<div><textarea>
Type D to delete from your current location to the end of the current line.
</textarea></div>
