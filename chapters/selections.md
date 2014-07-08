# Selections

There are three types of selections you can make in Vim: visual, visual
line, and visual block.  Selections are a core feature that you will come to
love.

## Visual Selection

Press v to activate visual selection mode, then use motions to expand the
selected area.

Once you are a visual selection you can perform operations on the selected
text.

d  delete the selected text
x  same thing
c  change the selected text
y  yank the selected text

You will typically use visual selection to select a specific piece of code
and yank it. You could yank the code with the standard yank command, but
doing a visual selection allows you to see exactly what you are about to
yank.

You can press o while in a visual selection to move the cursor to the other
side of the selection box. This allows you to expand the selection in the
other direction.

## Visual Line

Press shift-v to active visual line selection. Use motions like j, k, }, and
{ to expand the area of the selection.

You can then use the same commands as a visual selection to modify the text.

Visual line is great when you need to to move, delete or yank large portions
of text.

Remember that if you need to delete or yank a paragraph (paragraph means all
the lines are touching) then dap and yap are faster than doing a visual line
selection.

## Visual Block

Press control-v to activate visual block selection. Visual block is unique
because you can select characters across columns.

Use visual-block mode to fixup similar looking text on multipe lines.
Consider this text:

htis is a typo
htis is a typo
htis is a typo
htis is a typo

You could use visual block to highlight the "ht" in the first line, then
hit 3j, type c, then th, then <escape>. This would fix the typo on all of
the lines.

The standard selection commands work with visual block:

x or d to delete
c to change
y to yank

I to insert text. I is unique to visual block. Note that you will only see
your newly inserted text on the first line until you hit <escape>, then you
will see it inserted on every line.


## Substitute Across a Selection

Once you've made a visual selection of any kind you can use the substitute
ex command to make a substitution across the selected text.  Here's how:

1. Make a visual selection

2. Press : . You will see <,'> appear in the command line.

3. Type s/old/new/g and hit enter to make your substitution.
