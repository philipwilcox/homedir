function make_git_string() {
    local DEFAULT="\033[0m"
    local LIGHT_MAGENTA="\033[1;35m"
    if git branch 1>/dev/null 2>/dev/null; then
        echo -e "$DEFAULT{on $LIGHT_MAGENTA$(git rev-parse --abbrev-ref HEAD)$DEFAULT}"
    fi
}

function return_value_status() {
    LAST_STATUS=$?
    # based on http://serverfault.com/a/4894 -- maybe i should standardize on color escaping with similar stuff from how
    # that answer does it
    local LIGHT_RED="\033[1;31m"
    local WHITE="\033[37;1m"
    local SMILEY="${WHITE}😊 "
    local FROWNY="${LIGHT_RED}😣 "
    if [ $LAST_STATUS = 0 ]; then
        echo -e "${SMILEY}"
    else
        echo -e "${FROWNY}"
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

    PS1="\n\$(return_value_status) $LIGHT_GRAY[\d \t] $DEFAULT$GREEN\u$DEFAULT@$BLUE\h:$LIGHT_GREEN\w $LIGHT_BLUE\$(make_git_string)\n$LIGHT_CYAN💰  $DEFAULT"
}
set_prompt