# Chapter 1: Motions

Learning all the motions is the first step in mastering Vim. Later, these
motions will be combined with actions to great effect.


## Basic Motion

Let's start with basic motions. Try these out:

h moves you left
l moves you right

j moves you down (think "jump down")
k moves you up (think "kick it up")

You can hold these keys down to keep moving. You can get around a file with
hjkl, but it's not very efficient, so lets go over a few ways to get around
faster.

## Speedy Motion

{ moves you one paragraph up
} moves you one paragraph down

Now we're screaming! { and } are great for every day use to get around
methods quickly.


## Scrolling

control-u scrolls up (u for up)
control-d scrolls down (d for down)

These may come in handy if you want to jump around this tutorial.

## Top / Bottom of File

gg takes you to the first line in the file
G takes you to the bottom of a file

## Line Motion

^ moves you to the first character in a line

0 moves you to the beginning of the entire line (think "0 is the
beginning")

$ moves you to the end of the line (think "the buck stops here")

## Word Motion

w moves you to the first character of the next word (w for word)
e moves you to the last character of the next word (e for end)
b moves you to the first character of the previous word (b for beginning)

w, e, and b are good for crusing through words.

Note that you can capitalize any of these and they will skip across special
characters. For example, E will skip across these (parentheses), whereas e
will stop at each special character.

## Precise motion with f and t

The things I've shown you so far are great, but even if you get to a word
with e, you still would have to use h or l to get to a specific character
if it's not at the beginning or end of the word.  That can add up to a lot
of keystrokes.

Precise motion can minimize those keystrokes.

f<character> moves you to the next occurrence of <character> in your
current line (think "f is find")

Try it on the line above by going to the beginning of the line, then typing
"fo". That should take you to the "o" in "move".

Cycle through the search results:

; moves you to the next occurrence of the character you searched for.
, moves you to the previous occurrence of the character you searched for.

Next let's talk about t. t is like f, but it takes you up *till* the
character you search for.

t<character> moves you to the spot immediately before the next occurrence
of <character> is till")

Examples:

t.
t)
ta

f and t are some of the most useful motions. You'll see their true power
once we combine them with actions in future chapters.


## Motions Wrap Up

The best way to get good at motions is to practice. Play with all the
different motion types, and soon enough they'll be like second-nature.

The main goal with Vim motions is to get to your desired location with the
fewest keystrokes possible. Knowing all of these motions cold will help you
accomplish this.
