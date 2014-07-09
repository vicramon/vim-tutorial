# Yank and Put

Vim's yank and put are like copy and paste.

## Basic Yank

`y<motion>` will yank that specified text.

`yy` will yank the entire line (much like `dd`)

Examples:

`yw`   yank word

`y$`   yank to end of line

`2yy`  yank the next 2 lines

`yt.`  yank till .

`yfg`  yank to next occurrence of g

## Basic Put

`p`  paste the last yank after the cursor

`P`  paste the last yank *before* the cursor

## Pasting with Registers

Vim keeps track of all the things you have recently deleted in the "register".
Delete a few things, they type :reg to see the register. You will see output
like the following:

```
--- Registers ---
""   the most recent deleted OR yanked text
"0   the most recent yanked text
"1   the second most recent deleted text
"2   the third most recent deleted text
...
```

The first register, the `"` register, is called the unnamed register. It
contains your most recent delete **or** yank. If you yank something, then delete
something else then this register will be overwritten by the delete.

This can create problems because you could yank something, intending to
paste it elsewhere, then delete some text along the way,  type `p`
expecting to paste what you yanked, and -- whoops -- instead, you see what you
deleted.

The solution to this is the `0` register. The `0` register will contain your
last yank and it won't be overwritten by any deletions.

To put from the `0` register, type `"0p` .

Now that's a lot of characters and the `0` key is all the way in the upper right of the keyboard. That's the kind of thing that deserves a custom mapping. We can make on like so:

` :noremap gp "0p`

This will make `gp` always put from the `0` register. I'll be covering mappings
in a later chapter, just know that if you feel like something is annoying in Vim
you can usually make a mapping that fixes it.

## Pasting From Insert Mode

`Ctrl-r "` will paste from the unnamed register while in Insert Mode

`Crtl-r 0` will paste from the `0` register while in Insert Mode
