" --------------------------------
" Add our plugin to the path
" --------------------------------

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" --------------------------------
"  Function(s)
" --------------------------------
function! ToggleBool()
python3 << EOF

import sys
from os.path import normpath, join
import vim
plugin_root_dir = vim.eval('s:plugin_root_dir')
python_root_dir = normpath(join(plugin_root_dir, '..', 'python'))
sys.path.insert(0, python_root_dir)

from toggle_bool import toggle_bool_value

# get word under cursor
word_under_cursor = vim.eval('expand("<cword>")')

if len(word_under_cursor):
  # get the toggle value of word under cursor
  toggle_value = toggle_bool_value(word_under_cursor)

  # replace the current word with new toggled value and let the cursor stay in postion
  vim.command('s/%s/%s/ | call setpos(\'.\', getpos("\'\'"))' % (word_under_cursor, toggle_value))

EOF
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! ToggleBool call ToggleBool()

" key mapping
" noremap <leader>r :ToggleBool<CR>
