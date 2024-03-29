# Nvim setup

**Configured with NVIM NVIM v0.8.0-dev-2518-gad2d6a624-dirty**

1. Install dependencies
```
// General dependencies
brew update
brew install --HEAD luajit tree-sitter neovim
brew install grep ripgrep tmux marksman pnpm
npm i -g typescript typescript-language-server pyright vscode-langservers-extracted prettier @prisma/language-server @tailwindcss/language-server graphql-language-service-cli

brew install rust-analyzer

// rust dependencies
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-src
```

2. Install one of [nerd-fonts](https://www.nerdfonts.com/) and enable it in iTerm2

3. Install vim-plug `sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

4. Place _nvim_ folder in .config

5. Place _.tmux.conf_ in home folder

6. Go to _.config/nvim_

7. `nvim plug.vim`

8. `:PlugInstall`

