# Insert Mode

Vim is a modal editor, meaning that it has different modes. The mode you're
in when you're just moving around is called "Normal Mode". To insert new
text, we'll need act like a superhero and change costumes into... INSERT
MODE.

## Undo / Redo

Before we start modifying text, you should know these two things:

u undo
control-r redo

Now you know how to undo any crazy changes you make to this file. Just hold
u until you're back to the original. Note that u and control-r only work in
normal mode.


## Basic Insert

i switches you into insert mode wherever the cursor is.
a will put you in insert mode one space after the cursor
<escape> puts you back in normal mode.

You will know that you are in insert mode if you see "-- INSERT --" at the
bottom of Vim.

=== Advanced Insert

The cool thing about insert mode is that there are many ways to get into
it, each of which will put you in insert mode AND move you to the right
spot to insert code.

I will put you in insert mode at the beginning of a line.
A will put you in insert mode at the end of a line.
o will put you in insert mode on a new line (think "open")
O (that's capital o, not zero) will put you in insert mode on a new line
above your current line.

That's it for insert mode. If you find your pinky getting tired of hitting
escape you can use control-c or control-[ instead.
