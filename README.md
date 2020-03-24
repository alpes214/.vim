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
6. `<leader>b` - switch buffer

## Links
1. Vim tutorial https://www.tutorialspoint.com/vim/index.htm
2. Vim basic navigation https://www.tutorialspoint.com/vim/vim_navigating.htm
3. https://learnvimscriptthehardway.stevelosh.com/

