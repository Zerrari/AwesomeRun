# Awesome-Run

## Install

### python3 support
Firstly,you should have `python3`

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

## Intro

It is a plug to evaluate python script or compile and run the C code.

## Usage

Add following lines to your **config** 
```
nnoremap <F2> :call Compile_c_source()<CR>
nnoremap <F3> :call Eval_c()<CR>
nnoremap <F4> :call Eval_python_script()<CR>
```

Then you can type the key to run code in **Vim** . 

