## Saving

To save your changes to a file type :w and hit enter (w for write).


## Quitting

To quit out of a file, type :q . If you've made changes without saving then
Vim will give you the error: "No write since last change."

If you want to ignore your changes and not write the file type :q! to get
out of the file.

If you want to save your changes and quit, type :w, then :q . This can be
abbreviated into :wq or :x. They both do the same thing. I prefer :x because
it's one less character than :wq.


## Opening a File & Splits

:edit <filename>, or :e for short, will open the file in your current
window

:split <filename>, or :sp, will open the file in a horizontal split.

:vsplit <filename>, or :vs, will open the file in a vertical split.

You can open as many splits as you want.

To switch from one split to another type control-w <direction>. Direction
can be h, j, k, or l.

To move the arrangement of a split, type control-w <DIRECTION>, where
direction is H, J, K, or L.


## Tabs

:tabedit <filename>, or :tabe will open a file in a new tab.

Tabs are visible across the top of the screen.

gt will take you to the next tab
gT will take you to the previous tab


## Opening a Directory

:e <path/to/directory> will open a directory
:e .  will open the current directory

While in the directory view use j and k to move up and down file names, and
enter to open the file or directory under the cursor.


## Renaming a File

Vim has trouble doing this by itself. It has a :saveas command, but this
won't remove the previously named file.

Tim Pope wrote plugin called Eunuch which will handle renaming with the
:Rename command. I will cover plugins in a later chapter.

See Eunuch: https://github.com/tpope/vim-eunuch
