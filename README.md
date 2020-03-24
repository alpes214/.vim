# .vim

## HOWTO install and start to use vim on Ubuntu
```
docker run --name my --ti ubunt bash
apt update
cd ~
apt -y install git
apt -y install vim
export TERM=xterm-256color
apt -y install exuberant-ctags
apt -y install cscope
vim
```

## Usage 
### performance tips
1. Remap `Caps Lock` to `Ctrl` -- this is almost manadatory
2. `C-C` means `Ctrl-C` -- example of a shortcut
3. `C-M` means `Enter`
4. `C-H` means `Backspace`
5. hjkl -- `left`, `down`, `up`, `right`

### shortcuts in view mode
1. leader `,`
2. build ctags - `<leader>tags` -- type `,tags`
3. build cscope - `<leader>cs` -- type `,cs`
4. `C-]` - find function definition under cursor
5. `C-\s` - find all places where function is used
6. `gd` - select word
7. `n` - search forward
8. `N` - search backward
9. `/` - enter search
10. `:%s/<search>/<replace>/g` - replace everywhere
11. `,b` - switch to buffer
12. `x` - delete character under the cursor
13. `$` - got to end of the line
14. `0` - go to begin of the line
15. `w` - move one word forward
16. `b` - move one word backward
17. `v` - start selecting a text
18. `y` - copy selected text
19. `p` - paste selected text after current position
20. `P` - paste selected  text before current position



