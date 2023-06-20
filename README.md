# we are all satoshi
```sh
curl --silent --output ~/.bash_aliases https://raw.githubusercontent.com/plebeiusgaragicus/dotfile/main/bash_aliases
source .bash_aliases
```

# I am groot
```sh
cat << EOF >> ~/.bashrc

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

EOF
```


---

echo $(curl --silent --output ~/.bash_aliases https://raw.githubusercontent.com/plebeiusgaragicus/dotfile/main/bash_aliases) >> ~/.bashrc
