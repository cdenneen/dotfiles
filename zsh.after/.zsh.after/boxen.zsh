#source /opt/boxen/env.sh
export ENVPUPPET_BASEDIR=/Users/cdenneen/src/github/puppetlabs
#alias puppet="/Users/cdenneen/src/github/puppetlabs/puppet/ext/envpuppet puppet"
#alias facter="/Users/cdenneen/src/github/puppetlabs/puppet/ext/envpuppet facter"
#alias hiera="/Users/cdenneen/src/github/puppetlabs/puppet/ext/envpuppet hiera"
alias vim="/usr/local/bin/vim"
alias vi="/usr/local/bin/vim"

typeset -U path cdpath fpath


setopt auto_cd
cdpath=($HOME $HOME/src $HOME/src/gitlab $HOME/src/gitlab/puppet $HOME/src/github $HOME/src/gitlab/gi/kubernetes)

zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format %d
zstyle ':completion:*:descriptions' format %B%d%b
zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
        'local-directories named-directories'
