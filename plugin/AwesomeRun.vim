function! AwesomeRun_QuickfixOpen()
python3 << EOF
import vim
vim.command("copen")
EOF
endfunction

function! AwesomeRun_QuickfixClose()
python3 << EOF
import vim
vim.command("cclose")
EOF
endfunction

function! AwesomeRun_Cmdline(cmdline)
echo a:cmdline
python3 << EOF
import vim
vim.command("call AwesomeRun_QuickfixOpen()")
QuickFix = vim.current.buffer
vim.command("set modifiable")
vim.command("set nomodifiable")
EOF
endfunction

command! -nargs=0 QuickfixOpen      call AwesomeRun_QuickfixOpen()
command! -nargs=0 QuickfixClose     call AwesomeRun_QuickfixClose()
command! -nargs=* AwesomeRun        call AwesomeRun_Cmdline(<q-args>)
