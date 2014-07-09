You should never have to repeat yourself while using Vim.

Here are a few ways to save keystrokes.

## Dot Operator

`.` will repeat your last command.

The last command will be everything that happened from when you last entered Insert Mode to when you exited it. The `.` command will also remember how you got into Insert Mode.

Say you want to remove the last character of every line. You could do:

`A<backspace><escape>`

Then hit `j` to go to the next line, and hit `.`. It will remove the last character of the line regardless of where you start on the line because you used `A`.

The dot operator can also be played across a visual selection by making a
selection, then typing `:norm .`.  The norm stands for normal mode, which is the
mode you want the command to be executed in.

## Macros

Macros are a neat and often underused feature of Vim. A macro is a recording of
your keystrokes that can be replayed. Here's how to use them:

1. Press `qq` to start recording
2. Press `q` again to stop recording
3. Type `:@q` to play your macro on your current line

Macros can also be played across a visual selection with `:norm @q`.

One trick with macros is to make `0` the first key you record. This will place
your cursor at the beginning of the line, helping standardize the way the
macro will be played. This is important because your macro will always use the
current cursor location as it's starting point, so you often need to press `0` or
`^` to first to consistently get the correct result.
