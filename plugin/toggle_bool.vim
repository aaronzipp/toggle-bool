" --------------------------------
" Add our plugin to the path
" --------------------------------

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" --------------------------------
"  Function(s)
" --------------------------------
function! TemplateExample()
python3 << endOfPython

import sys
from os.path import normpath, join
import vim
plugin_root_dir = vim.eval('s:plugin_root_dir')
python_root_dir = normpath(join(plugin_root_dir, '..', 'python'))
sys.path.insert(0, python_root_dir)

from toggle_bool import toggle_bool_value

# get word under cursor
wordUnderCursor = vim.eval('expand("<cword>")')

if len(wordUnderCursor):
  # get the toggle value of word under cursor
  toggleValue = toggle_bool_value(wordUnderCursor)

  # replace the current word with new toggled value
  vim.command('normal viwc%s' % toggleValue)
  vim.command('normal b')

endOfPython
endfunction

" --------------------------------
"  Expose our commands to the user
" --------------------------------
command! ToggleBool call TemplateExample()

" key mapping
" noremap <leader>r :ToggleBool<CR>
