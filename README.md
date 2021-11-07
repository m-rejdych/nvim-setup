# Nvim setup

1. Install dependencies
```
brew update
brew install --HEAD luajit tree-sitter nvim
brew install grep tmux
npm i -g typescript typescript-language-server pyright vscode-langservers-extracted
```

2. Install vim-plug `sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

3. Place _nvim_ folder in .config

4. Place _.tmux.conf_ in home folder

5. Go to _.config/nvim_

6. `nvim plug.vim`

7. `:PlugInstall`

