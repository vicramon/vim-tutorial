# Yank and Put

Vim's yank and put are like copy and paste.

## Basic Yank

y<motion> will yank that specified text.
yy will yank the entire line

Examples:

yw   yank word
y$   yank to end of line
2yy  yank the next 2 lines

yt.  yank till .
yfg  yank to next occurrence of g

## Basic Put

p  put the last yank after the cursor
P  put the last yank before the cursor

## Pasting with Registers

Vim keeps track of all the things you have recently deleted in the register.
Delete a few things, they type :reg to see the register. You will see output
like the following:

--- Registers ---
""   the most recent deleted OR yanked text
"0   the most recent yanked text
"1   the second most recent deleted text
"2   the third most recent deleted text
"3   etc...
"4   etc...
"5   etc...
"6   etc...
"7   etc...
"8   etc...
"9   etc...

The first register, the " register, is called the unnamed register. It
contains your most recent delete or yank. If you yank something, then delete
something else then this register will be overwritten by the delete.

This can create problems because you could yank something, intending to
paste it elsewhere, then delete some text along the way, then type p
expecting to see your paste, and -- whoops -- instead, you see what you
deleted.

The solution to this is the 0 register. The 0 register will contain your
last yank and it won't be overwritten by any deletions.

To put from the 0 register, type "0p . Now that's a lot of characters and
the 0 key is way in the upper right of the keyboard. We can do better than
that for something we want to use a lot, so lets make a custom mapping for
it.

:noremap gp "0p

This will make gp always put from the 0 register. I'll be covering mappings
in a later chapter, just know that if you feel like something sucks in Vim
you can usually make a mapping that fixes it.


## Pasting From Insert Mode

ctrl-r "  will paste the unnamed register while in insert mode
crtl-r 0  will paste the 0 register while in insert mode
