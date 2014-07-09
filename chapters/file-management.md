## Saving

To save your changes to a file type `:w` and hit `enter`. The w stands for write.

## Quitting

To quit out of a file, type `:q`.

If you've made changes without saving then Vim will give you the error: "No write since last change."

If you want to ignore your changes and not write the file type `:q!` to get
out of the file.

If you want to save your changes and quit, type `:w`, then `:q`. This can be
abbreviated into `:wq` or `:x`.

## Opening a File and Splits

`:e <file>` will open the file in your current window.

`:sp <file>`, will open the file in a horizontal split.

`:vs <file>`, will open the file in a vertical split.

You can open as many splits as you want.

To switch from one split to another type `Ctrl-w <direction>`. Direction
can be `h`, `j`, `k`, or `l`.

To move the arrangement of a split, type `Ctrl-w <direction>`.

## Tabs

Tabs are visible across the top of the screen.

`:tabe <file>` will open a file in a new tab.

`gt` will take you to the next tab.

`gT` will take you to the previous tab.


## Opening a Directory

`:e <path/to/directory>` will open a directory

`:e .`  will open the current directory

While in the directory view use `j` and `k` to move up and down file names, and
`enter` to open the file or directory under the cursor.

## Renaming a File

Vim has trouble doing this by itself. It has a `:saveas` command, but this
won't remove the previously named file.

Tim Pope wrote plugin called [Eunuch](https://github.com/tpope/vim-eunuch) which will handle renaming with the `:Rename` command. I will cover plugins in a later chapter.
