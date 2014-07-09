There are three types of selections you can make in Vim: visual, visual
line, and visual block.  Selections are a core feature that you'll probably come to love.

## Visual Selection

Press `v` to activate visual selection mode, then use motions to expand the
selected area.

Once you are in a visual selection you can perform operations on the selected
text.

`d` or `x` to  delete the selected text

`c` to  change the selected text

`y` to yank the selected text

You could perform any of these actions without doing a selection, but doing the selection allows you to see exactly what text you are about to modify.

You can press `o` while in a visual selection to move the cursor to the other
side of the selection box. This allows you to expand the selection in the
other direction.

## Visual Line

Press `Shift-v` to active visual line selection. You can use motions to expand the area of the selection.

You can then use the same commands as a visual selection to modify the text.  Visual line is great when you need to to move, delete or yank multiple lines.

Remember that if you need to delete or yank a paragraph (paragraph means all
the lines are touching) then `dap` and `yap` can be faster than doing a visual line
selection.

## Visual Block

Press `Ctrl-v` to activate visual block selection. Visual block is unique
because you can select characters across columns.

Use visual-block mode to fixup similar looking text on multiple lines.

Consider this text:

htis is a typo

htis is a typo

htis is a typo

htis is a typo

You could use visual block to highlight the "ht" in the first line, then
hit 3j, type c, then th, then <escape>. This would fix the typo on all of
the lines.

The standard selection commands all work with visual block.

You also press `I` to insert new text. At first you will only see
your new text on the first line. Hit `escape` to exit Insert Mode, then you
will see the new text inserted on every line.


## Substitute Across a Selection

Once you've made a visual selection of any kind you can use the substitute
command to make a substitution across the selected text.  Here's how:

1. Make a visual selection

2. Press `:`. You will see `<,'>` appear in the command line.

3. Type `s/old/new/g` and hit `enter` to make your substitution.
