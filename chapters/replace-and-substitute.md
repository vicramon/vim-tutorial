Replace and substitute are two additional actions.

## Replace

Type r<character> to replace the character under the cursor with
<character>.

Type R to enter replace mode. In replace mode anything you type will
overwrite what's currently there.

You can hit <escape> to exit replace mode.


## Basic Substitute

s will delete the character under cursor then place you in insert mode so
you can continue typing

S will delete the text on the current line and place you in insert mode at
the beginning of the line.

I use S whenver I need to change an entire line and I'm not at the
beginning of that line. The neat thing about S is that it respects tab
alignment. It's essentially ^C combined into one command.

## Primer on Ex Commands

Ex commands are when you type : then type a command. If you hit : then
start typing you will see your text appear on the command line. You can hit
<enter> to execute a command or <escape> to get out.

## Substitute Ex Command

:%s/old/new/g will replace "old" with "new" everywhere in your current
file.

The g stands for global.

Add c to the end to be prompted before making each change. This is great
for search and replace where you need to check each match and choose
whether or not to make the replacement.

:%s/old/new/gc
