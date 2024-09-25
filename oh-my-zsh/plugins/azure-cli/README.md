# azure-cli.zsh ![GitHub release](https://img.shields.io/github/release/danarth/azure-cli.zsh.svg)

Oh My Zsh plugin providing auto-completion for [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/)

## Usage

### [antigen](https://github.com/zsh-users/antigen)

Add antigen bundle danarth/azure-cli.zsh to your ~/.zshrc

### [oh-my-zsh](https://github.com/oh-my-zsh/oh-my-zsh)

Clone the repository inside your oh-my-zsh repo:

```
git clone https://github.com/danarth/azure-cli.zsh ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/azure-cli
```

Then add it to your oh-my-zsh plugins:

```
plugins=(... azure-cli)
```

## Caveats

So far, this plugin has only been tested on:

* Ubuntu 18.04
* MacOS with azure-cli installed through homebrew

Feel free to add support for other platforms
