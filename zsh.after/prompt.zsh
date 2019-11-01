POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv rspec_stats vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery disk_usage ram ip load time)
POWERLEVEL9K_HIDE_BRANCH_ICON=true
#prompt powerlevel9k
prompt minimal

if [ "$USER" = "root" ]
then
  #export PROMPT='%{$fg_bold[magenta]%}%m %{$fg_bold[blue]%}# %b%f'
  export PROMPT='%{$fg_bold[magenta]%}macbook %{$fg_bold[blue]%}# %b%f'
elif [ -n "${SSH_CONNECTION}" ]
then
  #export PROMPT='%{$fg_bold[cyan]%}%m %{$fg_bold[blue]%}# %b%f'
  export PROMPT='%{$fg_bold[cyan]%}macbook %{$fg_bold[blue]%}# %b%f'
else
  #export PROMPT='%{$fg_bold[green]%}%m %{$fg_bold[blue]%}# %b%f'
  export PROMPT='%{$fg_bold[green]%}macbook %{$fg_bold[blue]%}# %b%f'
fi
export RPROMPT='%{$fg_bold[red]%}$(git_branch)%{$fg_bold[yellow]%}$(svn_branch)%b[%{$fg_bold[blue]%}%~%b%f]'

# Set Prezto prompt to override since using iTerm status bar currently
prompt off
