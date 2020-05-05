# TO INSTALL MY FISH STUFF:
# replace ~/.config/fish/config.fish with:
# ```
# source ~/Repos/homedir/fish/config.fish
# ```

# Source functions from repo
set fish_function_path ~/Repos/homedir/fish/functions $fish_function_path
set fish_complete_path ~/Repos/homedir/fish/completion $fish_complete_path

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'

# path shortening for PWD
set fish_prompt_pwd_dir_length 0
