PATH="/Users/cdenneen/.bin${PATH+:}${PATH}"; export PATH;

typeset -U path cdpath fpath


setopt auto_cd
cdpath=($HOME $HOME/src $HOME/src/gitlab $HOME/src/gitlab/puppet $HOME/src/github $HOME/src/gitlab/gi/kubernetes)

zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %d
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
        'local-directories named-directories'
