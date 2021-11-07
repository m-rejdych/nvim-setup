# Nvim setup

1. Install dependencies `brew install tree-sitter luajit neovim tmux`

2. Install required tools
```
brew update
brew install --HEAD luajit tree-sitter nvim
brew install grep tmux
npm i -g typescript typescript-language-server pyright
```

3. Install vim-plug `sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

4. Place _nvim_ folder in .config

5. Place _.tmux.conf_ in home folder

6. Go to _.config/nvim_

7. `nvim plug.vim`

8. `:PlugInstall`

