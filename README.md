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

### Symbolic links

- **Linux**:

```sh
ln -s repo_path/.vim ~/.vim
ln -s repo_path/.vimrc ~/.vimrc
```

- **Windows**:

```sh
mklink /D C:\Users\user_name\.vimfiles C:\Users\user\repopath\.vim
mklink /D C:\Users\user_name\.vimrc C:\Users\user\repopath\.vimrc
```
