## Basic Usage

Search is an invaluable tool that's very easy to use in Vim.

Hit `/` and you will see `/` appear in the tray at the bottom of Vim. Start typing what you are
searching for, then hit enter to go to the first match.

`/<string>` will search for next occurrences of that string.

`?<string>` will search for previous occurrences that string.

`enter` takes you to the first match.

Cycle through matches:

`n` go to next match

`N` go to previous match

## A Primer on Options

You can turn an option on like this:

`:set <option>`

Some options are boolean. To turn them off, type:

`:set no<option>`

Other options take a parameter:

`:set <option>=<parameter>`

You can inquire about the current state of an option:

`:set <option>?`

## Search Options

There are two options that I recomend you turn on for searching.

First, set search to ignore the case of characters.

`:set ignorecase`, or `:set ic`

Second, turn on "smartcase". If you type in a search pattern that is all
lowercase then smartcase will show both lower and uppercase matches.
However, if you type a single uppercase character then smartcase will
become case sensitive.

`:set smartcase`

Smartcase gives you the best of both worlds. You don't have to type
uppercase characters when casually searching, but if you need to find a
specific constant or class name, which typically has an uppercase
character, you can weed out all the lowercase matches by typing with the
actual case.

Unfortunately, both of these settings default to off. You can put them in
your vimrc file so that you don't have to type them every time you start
Vim. We'll cover vimrc's in a later chapter.

## Search with *

`*` will search for the word under the cursor. You can still use `n` and `N` to cycle through the results.
