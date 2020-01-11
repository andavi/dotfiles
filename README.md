## My Dotfiles

Instructions for myself:

* Pull latest repo
* Manually (for now) update the system dotfiles
* Make configuration changes if desired
* Go into folder of whichever OS you are on and run the sync script
* cd to the root of the repo and then git add, commit, push

### Repo Tree

```zsh
./
├── .gitignore
├── common/
│  ├── aliases.zsh
│  ├── icons.txt
│  └── nerd-fonts.txt
├── debian/
│  ├── .bash_aliases
│  ├── .bash_aliases-arm
│  ├── .p10k.zsh
│  ├── .zshrc
│  ├── neofetch/
│  │  ├── config-old.conf
│  │  └── config.conf
│  └── syncdotslnx*
├── macos/
│  ├── .bash_aliases
│  ├── .bash_profile
│  ├── .p10k.zsh
│  ├── .vimrc
│  ├── .zshrc
│  ├── neofetch/
│  │  └── config
│  └── syncdotsmac*
└── README.md
```

### To Do

* Make sync script work from root
* Have sync script update new config files automatically
* Keep learning