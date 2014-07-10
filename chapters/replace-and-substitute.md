Replace and substitute are two additional actions.

## Replace

`r<character>` will replace the character under cursor with the new character. It keeps you in Normal Mode.

`R` puts you in Replace Mode. In Replace Mode anything you type will overwrite what's currently on the line.

You can hit `escape` to exit replace mode.

<div><textarea>
Replace any character by typing r then the new character you want.

Enter replace my by typing R.
</textarea></div>

## Substitute

`s` will delete the character under cursor then place you in insert mode so
you can continue typing.

`S` will delete the text on the current line and place you in insert mode at
the beginning of the line.

I use `S` whenver I need to change an entire line and I'm not at the
beginning of that line. The neat thing about `S` is that it respects tab
alignment. It's essentially `^c$` combined into one command.

<div><textarea>
Type s then start typing to replace a charcter and insert new text.

  This is indented.
  Type S on this line to delete the line then enter insert mode at the
  correct indentation level.
</textarea></div>

## Ex Commands

Ex commands are commands you type after typing `:`. If you hit `:` then
start typing you will see your text appear on the command line. You can hit
`enter` to execute a command or `escape` to get out.

## Substitute Ex Command

`:%s/old/new/g` will replace "old" with "new" everywhere in your current
file.

The `g` stands for global.

Add `c` to the end to be prompted before making each change. This is great
for search and replace where you need to check each match and choose
whether or not to make the replacement.

`:%s/old/new/gc`

<div><textarea>
Type :%s/hello/hi/g to replace hello with hi everywhere.

Hello there.
</textarea></div>
