function! Eval_python_script()
python3 << EOF
import vim
cur_buffer = vim.current.buffer
vim.command("!python3 %")
EOF
endfunction

function! Compile_c_source()
python3 << EOF
import vim
vim.command("!gcc % -o %<")
EOF
endfunction

function! Eval_c()
python3 << EOF
import vim
vim.command("!./%<")
EOF
endfunction

