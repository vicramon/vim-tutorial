Learning the motions is the first step in mastering Vim. Motions specify a direction and a distance. When used alone they simply move the cursor. However, they can also be combined with actions, as we'll see later.

## Basic Motion

Let's start with basic motions. Try these out:

`h` moves one character left

`l` moves one character right

`j` moves one character down (think "jump down")

`k` moves one character up (think "kick it up")

You can hold these keys down to keep moving. 

You can get around a file with
just `h`, `j`, `k`, and `l`, but it's not very efficient. Lets go over a few ways to get around
faster.

## Speedy Motion

`}` moves one paragraph down

`{` moves one paragraph up

Now we're screaming! `}` and `{` are great for getting around methods and functions quickly.

## Scrolling

`Ctrl-u` scrolls up (think "u for up")

`Ctrl-d` scrolls down (think "d for down")

You might want to consider changing your Caps Lock key to Control. If you use Vim, having easy access to Control will be much more valuable to you than having a Caps Lock key. In Mac OS X you can do this by going to System Preferences > Keyboard > Modifier Keys.

## Top / Bottom of File

`gg` takes you to the top of the file

`G` takes you to the bottom of the file

## Line Motion

`^` moves you to the first character in a line

`0` moves you to the beginning of the entire line (think "0 is the beginning")

`$` moves you to the end of the line (think "the buck stops here")

## Word Motion

`w`, `e`, and `b` are good for crusing through words.

`w` moves you to the first character of the next word (w for word)

`e` moves you to the last character of the next word (e for end)

`b` moves you to the first character of the previous word (b for beginning)

You can capitalize any of these motions and they will skip across special
characters. For example, `E` will skip across parentheses, whereas `e`
will stop at each special character.

## Precise motion with f and t

The things I've shown you so far are great, but you would still have to use `h` or `l` to get to a specific character if it's not at the beginning or end of the word.  That can add up to a lot
of keystrokes. That's where `f` and `t` come in.

### f is for find

`f<character>` moves you to the next occurrence of `<character>` in your
current line (think "f is find")

You can go to the next and previous occurences of the character you searched for:

`;` moves to the next occurrence

`,` moves to the previous occurrence

### t is for till

`t` is like `f`, but it takes you up *till* the
character you search for.

`t<character>` moves you to the spot immediately before the next occurrence
of `<character>` (think "t is till")

`f` and `t` are some of the most useful motions. You'll see their true power
once we combine them with actions in future chapters.

## Motions Wrap Up

The main goal with Vim motions is to get to your desired location with the
fewest keystrokes possible. Knowing all of these motions will help you.
