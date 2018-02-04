[[ -s "$HOME/Repos/homedir/git_prompt.bash" ]] && source "$HOME/Repos/homedir/git_prompt.bash"
[[ -s "$HOME/Repos/homedir/shared_history.bash" ]] && source "$HOME/Repos/homedir/shared_history.bash"

export EDITOR=emacs

# Here's a discussion of using SSH agent on arch wiki, in conjunction with "AddKeysToAgent yes"
# I slightly modified to silence output.
# https://wiki.archlinux.org/index.php/SSH_keys#SSH_agents
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    eval "$(ssh-agent > ~/.ssh-agent-deets)" &> /dev/null
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-deets)" &> /dev/null
fi
# BUT NOTE THAT I NEED A CORRESPONDING `ssh-agent -k` in .bash_logout
