Vim has multiple modes. Keys do different things in different modes. The mode you're in when you're just moving around is called Normal Mode. To insert new text you'll need to switch into Insert Mode.

## Undo / Redo

Before we start modifying text, you should know these two things:

`u` is undo

`Ctrl-r` is redo

Now you can undo any craziness that occurs. Just hold `u` until you're back to where you started.

## Basic Insert

`i` switches you into insert mode at the cursor

`a` puts you in insert mode one space after the cursor

`escape` puts you back in Normal Mode.

## Advanced Insert

The neat thing about Insert Mode is that there are many ways to get into
it, each of which will put you in Insert Mode *and* move you to the right
spot to insert code.

`I` puts you in insert mode at the beginning of a line

`A` puts you in insert mode at the end of a line

`o` puts you in insert mode on a new line (think "open")

`O` puts you in insert mode on a new line above your current line.

## Alternate Escape Routes

If you find your pinky getting tired of hitting `escape` you can use one of these instead:

`Ctrl-c`

`Ctrl-[`
