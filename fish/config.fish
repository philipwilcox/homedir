# TO INSTALL MY FISH STUFF:
# replace ~/.config/fish/config.fish with:
# ```
# source ~/Repos/homedir/fish/config.fish
# ```
# I usually also install https://github.com/jichu4n/fish-command-timer into ~/.config/fish/conf.d 


# Source functions from repo
set fish_function_path ~/Repos/homedir/fish/functions $fish_function_path
set fish_complete_path ~/Repos/homedir/fish/completion $fish_complete_path

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'auto'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_branch 'brmagenta'

# path shortening for PWD
set fish_prompt_pwd_dir_length 0
set -gx EDITOR emacs
