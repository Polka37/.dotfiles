function fish_prompt
    echo -s (set_color -b d20f39)' '(date +%H:%M:%S)' ' (set_color d20f39 -b 45475a)' '(set_color white -b 45475a)(prompt_pwd)' '(set_color 45475a -b normal) ' '
end
