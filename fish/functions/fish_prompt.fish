function show_return_status
    if test $status -eq 0
	set_color normal
	printf '😊 '
    else
	set_color $fish_color_error
	printf '😧 '
    end
end	

function fish_prompt
    printf '\n'
    show_return_status

#    set_color normal
    set datestring (date +"%a %b %_d %R:%S")
    set_color $fish_color_autosuggestion
    printf '[%s] ' $datestring

    set_color green
    printf '%s' (whoami)
    set_color normal
    printf '@'
    set_color blue
    printf '%s' (hostname)
    set_color normal
    printf ':'

    set_color -o green
    printf '%s ' (prompt_pwd)
    set_color normal

    printf '%s' (fish_git_prompt)
    
    printf '\n💰 '
    set_color normal
end
