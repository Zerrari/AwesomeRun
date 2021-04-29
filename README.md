# AwesomeRun

## Intro

It is a plug to run shell commands in **vim** editor.

## Install

### python3 support
Firstly,you should have `python3` support

If you use `neovim`

`pip3 install pynvim`


### plug

If you use `vim-plug`

add this line in your **Config**: 

`Plug 'Zerrari/awesome-run'`

...then run the following in Vim:
```
:source %
:PluginInstall
```


## Usage

You can add some keybindings your self.

**Example:** 
```
Complie the C code
nnoremap <F2> :AwesomeRun gcc % -o %< <cr>

Execute the C code
nnoremap <F3> :AwesomeRun ./%<<cr>

Execute the pyhton3 script
nnoremap <F3> :AwesomeRun python3 %<cr>

```

Then you can type the key to run code in **Vim** . 

