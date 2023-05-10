# Vim

Cool Cool Cool!

- **Pull**

```sh
git pull --recurse-submodules
```

- **Init**

```sh
git submodule update --init
```

## Setup

### Dependencies

Download patched fonts for vim airline at [Nerd Fonts GitHub Repository](https://github.com/ryanoasis/nerd-fonts/releases) and configure yout terminal emulator to use that font. In Windows terminal right click, go to configuration > profile > default> appearance > Font Type.

> Add submodule: git submodule add <git_url> .vim/pack/\<folder\>/start/<plugin_name>

- **Prettier**

```sh
npm install -g prettier
```

- **Conqueror of completion**:

```
cd .vim/pack/plugins/start/coc && \
npm install
```

At vim command mode:

```
CocInstall coc-html coc-tsserver coc-css coc-json @yaegassy/coc-volar @yaegassy/coc-volar-tools coc-pyright
```

- **Black**:

```
mkdir -p .vim/pack/python/start/black/plugin
mkdir -p .vim/pack/python/start/black/autoload
curl https://raw.githubusercontent.com/psf/black/stable/plugin/black.vim -o ~/.vim/pack/python/start/black/plugin/black.vim
curl https://raw.githubusercontent.com/psf/black/stable/autoload/black.vim -o ~/.vim/pack/python/start/black/autoload/black.vim
```

psf/black virtual environment

```
python -m venv .vim/black
```

windows:

```
source .vim/black/Scripts/activate
pip install black
```

linux:

```
source .vim/black/bin/activate
pip install black
```

### Symbolic links

- **Linux**:

```sh
ln -s repo_absolute_path/.vim ~/.vim
ln -s repo_absolute_path/.vimrc ~/.vimrc
```

- **Windows**:

```sh
mklink /D C:\Users\user_name\.vimfiles C:\Users\user\repopath\.vim
mklink C:\Users\user_name\.vimrc C:\Users\user\repopath\.vimrc
```
