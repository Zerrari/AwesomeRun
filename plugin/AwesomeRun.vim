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
redir! > output.txt 
python3 << EOF
import vim
cmd = vim.eval("a:cmdline")
cmd = "silent execute('!" + cmd + "')"
vim.command(cmd)
EOF
redir END
let l:sympol = 0 
python3 << EOF
import vim
import os
vim.command("call AwesomeRun_QuickfixOpen()")
QuickFix = vim.current.buffer
vim.command("set modifiable")
QuickFix.append("[--AwesomeRun--]")
del QuickFix[0]
flag = 0
with open("output.txt") as read_file:
   for line in read_file:
        line = line.rstrip()
        if line == '':
            continue
        if flag == 0:
            QuickFix.append('cmd: ' + line[2:] )
            flag = 1
            QuickFix.append('res:')
            continue
        QuickFix.append('-- ' + line)
QuickFix.append("[--Finished--]")
EOF
endfunction

command! -nargs=0 QuickfixOpen      call AwesomeRun_QuickfixOpen()
command! -nargs=0 QuickfixClose     call AwesomeRun_QuickfixClose()
command! -nargs=* AwesomeRun        call AwesomeRun_Cmdline(<q-args>)
