Learning the motions is the first step in mastering Vim. Motions specify a direction and a distance. When used alone they simply move the cursor. However, they can also be combined with actions, as we'll see later.

## Basic Motion

Let's start with basic motions. Try these out:

`h` moves one character left

`l` moves one character right

`j` moves one character down (think "jump down")

`k` moves one character up (think "kick it up")

You can hold these keys down to keep moving. 

<div><textarea>
Click inside this box, then use h, j, k, and l to move around in here.

Here's another line.

Here's another line.
</textarea></div>

You can get around a file with
just `h`, `j`, `k`, and `l`, but it's not very efficient. Lets go over a few ways to get around
faster.

## Speedy Motion

`}` moves one paragraph down

`{` moves one paragraph up

Now we're screaming! `}` and `{` are great for getting around methods and functions quickly.

<div><textarea>
Use { and } to traverse these paragraphs

A paragraph in Vim just means touching lines
Here's a line
Here's a line

Now this is a new paragraph
Here's a line
Here's a line

Now this is the last paragraph
Here's a line
Here's a line
</textarea></div>

## Scrolling

`Ctrl-u` scrolls up (think "u for up")

`Ctrl-d` scrolls down (think "d for down")

<div><textarea>
Try scrolling up and down with Ctrl-u and Ctrl-d

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line
</textarea></div>

You might want to consider changing your Caps Lock key to Control. If you use Vim, having easy access to Control will be much more valuable to you than having a Caps Lock key. In Mac OS X you can do this by going to System Preferences > Keyboard > Modifier Keys.

## Top / Bottom of File

`gg` takes you to the top of the file

`G` takes you to the bottom of the file

<div><textarea>
Go to the middle of this file then hit gg to get to the top.

Then hit G to go to the bottom.

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line

Here's a line
</textarea></div>

## Line Motion

`^` moves you to the first character in a line

`0` moves you to the beginning of the entire line (think "0 is the beginning")

`$` moves you to the end of the line (think "the buck stops here")

<div><textarea>
   Hit ^ to go to the first text on this line

   Hit 0 to go to the very beginning of the line (column 0)

   Hit $ to go to the end of this line
</textarea></div>

## Word Motion

`w`, `e`, and `b` are good for crusing through words.

`w` moves you to the first character of the next word (w for word)

`e` moves you to the last character of the next word (e for end)

`b` moves you to the first character of the previous word (b for beginning)

You can capitalize any of these motions and they will skip across special
characters. For example, `E` will skip across parentheses, whereas `e`
will stop at each special character.

<div><textarea>
Hit w to go across these words. See how the cursor always goes to the
first character?

Hit e to go across these words. See how the cursor always goes to the
last character?

Hit b to go across these words. See how the cursor always goes to the
first character?

Skip across special characters by using W, E, and B:

Here is a crazy.(word)[with] special characters.
</textarea></div>

## Precise motion with f and t

The things I've shown you so far are great, but you would still have to use `h` or `l` to get to a specific character if it's not at the beginning or end of the word.  That can add up to a lot
of keystrokes. That's where `f` and `t` come in.

### f is for find

`f<character>` moves you to the next occurrence of `<character>` in your
current line (think "f is find")

You can go to the next and previous occurences of the character you searched for:

`;` moves to the next occurrence

`,` moves to the previous occurrence

<div><textarea>
Type fb on the beginning of this line. It should take you to the first b.

Hit ; to go to the next b. Hit , to go back.

Notice how ; and , won't take you to another line.
</textarea></div>

### t is for till

`t` is like `f`, but it takes you up *till* the
character you search for.

`t<character>` moves you to the spot immediately before the next occurrence
of `<character>` (think "t is till")

<div><textarea>
Type tb on the beginning of this line.

Type ; to go to the next b. Type , to go to the previous b.

Type t. to go to the first . on this line

Type t) to go to the first ) on this line

Type ta to go to the first a on this line
</textarea></div>

`f` and `t` are some of the most useful motions. You'll see their true power
once we combine them with actions in future chapters.

## Motions Wrap Up

The main goal with Vim motions is to get to your desired location with the
fewest keystrokes possible. Knowing all of these motions will help you.
