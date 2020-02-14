# My Dotfiles

The purpose of this repo is to keep the configuration files which are important to me backed up and easily  synched between the different systems I use.

For now I only automate getting the config files from the current system and updating the duplicates in the repo. Setting system configs from the repo is done manually.

## TODO

- Make repo DRYer between OS directories (somehow)
- Automate setting dots from repo to system in cases where it'd be helpful, such as:
  - Setting up a new system
  - Recovering from improper config tweaking

## Repo Tree

```zsh
./
├── .DS_Store
├── .gitignore
├── common/
│  ├── icons.txt
│  └── nerd-fonts.txt
├── debian/
│  ├── .bash_aliases
│  ├── .bash_aliases-arm
│  ├── .bashrc
│  ├── .p10k.zsh
│  ├── .zshrc
│  ├── aliases.zsh
│  └── neofetch/
│     ├── config-old.conf
│     └── config.conf
├── getdots.sh*
├── helpers/
│  ├── lnx-getdots.sh*
│  └── mac-getdots.sh*
├── macos/
│  ├── .bash_aliases
│  ├── .bash_profile
│  ├── .p10k.zsh
│  ├── .vimrc
│  ├── .zshrc
│  ├── aliases.zsh
│  ├── neofetch/
│  │  └── config
│  └── shortcuts.zsh
├── README.md
└── setdots.sh
```

### To Do

* Make sync script work from root
* Have sync script update new config files automatically
* Keep learning