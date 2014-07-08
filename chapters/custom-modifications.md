# Custom Modifications

## Custom Mappings

Vim allows you to map any key to any other key. For example:

:map x :echo 'hi'<cr>

If you type that then hit x you will see 'hi' printed on the command line.
We don't want to keep this mapping, so let's get rid of it.

:unmap x

When mapping commands you should almost always prefix the mapping with
'nore', which stands for non-recursive. This means that the mapping will
look to the true vim commands for the sequence it's using instead of
looking at another vim mapping. This prevents any unwanted recursion or une
in mapping commands. A typical mapping should look like this:

:noremap <keystroke to map> <keystroke to use>

If you try ":noremap x p", you'll see that x will will do a put. However,
if you enter insert mode then type x you will see x, not p. That's because
mapping defaults to normal mode only. If you want to make a mapping
specifically for insert mode, you would have to do:

:inoremap <keystroke to map> <keystroke to use>

The same goes for visual mode:

:vnoremap <keystroke to map> <keystroke to use>

In summary we have:

:noremap
:inoremap
:vnoremap

And corresponding unmap commands:

:unmap
:iunmap
:vunmap

Note that modifier keys have their own representations:

<CR>  for enter
<S>   for shift
<C>   for control
<esc> for escape
<leader> for \

To make a mapping that requires a modifier to be held down at the same time
as another key, use a dash. For example, to map control-l to control-l + w
you would do this:

:noremap <C-l> <C-w>l


## Vimrc

Vim will automatically look for and load a .vimrc file in your home
directory when it starts. Your vimrc file is a great place to put your
personal settings and mappings.

Officially, vimrc files are written in what's called Vimscript. But you
don't need to know any real Vimscript to make a useful vimrc. Just take ex
commands, like :set ic, and place them in the file without the colon.

An example vimrc file might look like this:

set number
set ignorecase
set smartcase

Here are some things I keep in my vimrc that I use all the time:

" Comments in Vimscript start with a double quote

" \s is much faster than :w enter
nnoremap <leader>s :w<cr>
inoremap <leader>s <esc>:w<cr>

" same thing goes for \q
noremap <leader>q :q<cr>

" who has time to press w each time they want to change windows?
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" this is much faster than typing :set paste, then :set nopaste
set pastetoggle=<F10>

I turned my vimrc into a plugin called vim-quickdraw. You can check it out at
https://github.com/vicramon/vim-quickdraw.

If you end up creating a bunch of personal mappings and settings then I
highly suggest that you also make your vimrc a plugin. It's very easy, and
it keeps your code under version control and accessible from any other
computer.


