function make_git_string() {
    local DEFAULT="\033[0m"
    local LIGHT_MAGENTA="\033[1;35m"
    if git branch 1>/dev/null 2>/dev/null; then
        echo -e "$DEFAULT{on $LIGHT_MAGENTA$(git rev-parse --abbrev-ref HEAD)$DEFAULT}"
    fi
}

function set_prompt {
    # include differently-escaped versions of the color codes here... there's gotta be a better way :\
    local BLUE="\[\033[0;34m\]"
    local LIGHT_BLUE="\[\033[1;34m\]"
    local GREEN="\[\033[0;32m\]"
    local LIGHT_GREEN="\[\033[1;32m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"
    local RED="\[\033[0;31m\]"
    local LIGHT_RED="\[\033[1;31m\]"
    local LIGHT_MAGENTA="\[\033[1;35m\]"
    local CYAN="\[\033[0;36m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local DEFAULT="\[\033[0m\]"

    PS1="\n$LIGHT_GRAY[\d \t] $DEFAULT$GREEN\u$DEFAULT@$BLUE\h:$LIGHT_GREEN\w $LIGHT_BLUE\$(make_git_string)\n$LIGHT_CYAN💰  $DEFAULT"
}
set_prompt