## Custom Mappings

Vim allows you to map any keystroke to any other keystroke. For example:

`:map x :echo 'hi'<cr>`

If you type that then hit `x` you will see `hi` printed on the command line.
We don't want to keep this mapping, so let's get rid of it.

`:unmap x`

When mapping commands you should almost always prefix the mapping with
`nore`, which stands for non-recursive. This means that the mapping will
look to the true vim commands for the sequence instead of
looking at any other vim mappings. This prevents any unwanted recursion or unexpected consequences
from mapping commands. A typical mapping will look like this:

`:noremap <keystroke to map> <keystroke to use>`

If you try `:noremap x p`, you'll see that `x` will will do a put. However,
if you enter Insert Mode then type `x` you will see `x`, not `p`. That's because
mappings default to Normal Mode only. If you want to make a mapping
specifically for Insert Mode, you would have to do this:

`:inoremap <keystroke to map> <keystroke to use>`

The same goes for visual mode:

`:vnoremap <keystroke to map> <keystroke to use>`

In summary we have:

`:noremap`

`:inoremap`

`:vnoremap`

And corresponding unmap commands:

`:unmap`

`:iunmap`

`:vunmap`

Note that modifier keys have their own representations:

`<cr>` for enter

`<s>` for shift

`<c>` for control

`<esc>` for escape

`<leader>` for `\`

To make a mapping that requires a modifier to be held down at the same time
as another key, use a dash. For example, to map `Ctrl-l` to `Ctrl-l` + `w`
you would do this:

`:noremap <c-l> <c-w>l`

## Map Something to Nothing

If you are want to change your habits in Vim, one of the best things you can do is map the key you don't want to use to `<NOP>`. This stands for "no operation", and it will make the key do nothing.

Let's say you want to try to use Ctrl-c intead of escape. This mapping will help you greatly:

`:noremap <esc> <NOP>`

## Vimrc

Vim will automatically look for and load a `.vimrc` file in your home
directory when it starts. Your vimrc file is a great place to put your
personal settings and mappings.

Officially, vimrc files are written in what's called Vimscript. But you
don't need to know any real Vimscript to make a useful vimrc. Just take any ex
commands, like `:set ic`, and place them in the file without the colon.

An example vimrc file might look like this:

```vim
" ~/.vimrc
set number
set ignorecase
set smartcase
```

Here are some things I keep in my vimrc that I use all the time:

```vim
" \s is much faster than :w enter
nnoremap <leader>s :w<cr>
inoremap <leader>s <esc>:w<cr>

" same thing goes for \q
noremap <leader>q :q<cr>

" who has time to press w each time they want to change splits?
noremap <c-l> <c-w>l
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k

" this is much faster than typing :set paste, then :set nopaste
set pastetoggle=<leader>z
```

I turned my vimrc into a plugin called vim-quickdraw. You can check it out at https://github.com/vicramon/vim-quickdraw.

If you end up creating a bunch of personal mappings and settings then I
suggest that you put your vimrc into a plugin that's under version control. That way it wil be portable, sharable, and harder to lose.
