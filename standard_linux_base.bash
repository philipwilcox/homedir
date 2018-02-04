[[ -s "$HOME/Repos/homedir/git_prompt.bash" ]] && source "$HOME/Repos/homedir/git_prompt.bash"
[[ -s "$HOME/Repos/homedir/shared_history.bash" ]] && source "$HOME/Repos/homedir/shared_history.bash"

export EDITOR=emacs

# See http://rabexc.org/posts/pitfalls-of-ssh-agents for why I'm not doing ssh-agent here. Instead,
# I set my terminal emulator to run my bash shell inside of it with the following bit of magic:
# `/usr/bin/ssh-agent /bin/bash -l`, which gives me one agent per shell so some redundant password
# entry, but I was able to verify they unload correctly which is nice. And the password only
# prompts, in combo with "AddKeysToAgent yes", when first needed.
