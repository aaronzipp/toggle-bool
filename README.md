# toggle-bool

[![Code Checks](https://github.com/aaronzipp/toggle-bool/actions/workflows/testing.yml/badge.svg?branch=master)](https://github.com/aaronzipp/toggle-bool/actions/workflows/testing.yml)

Vim plugin to toggle boolean values.


## List of boolean values supported

- true &harr; false 
- yes &harr; no 
- on &harr; off
- 0 &harr; 1


## Installation

Use your plugin manager of choice.

- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/aaronzipp/toggle-bool ~/.vim/bundle/toggle-bool`
- [Vundle](https://github.com/gmarik/vundle)
  - Add `Bundle 'https://github.com/sagarrakshe/toggle-bool'` to .vimrc
  - Run `:BundleInstall`
- [NeoBundle](https://github.com/Shougo/neobundle.vim)
  - Add `NeoBundle 'https://github.com/aaronzipp/toggle-bool'` to .vimrc
  - Run `:NeoBundleInstall`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - Add `Plug 'https://github.com/aaronzipp/toggle-bool'` to .vimrc
  - Run `:PlugInstall`


## Usage

To invoke you need to call `:ToggleBool`. You can map accordingly.
For example, to map to `<leader>r` you need to add following to your *.vimrc*

    noremap <leader>r :ToggleBool<CR>
