function fish_prompt
    set_color -o
    echo -s (set_color -b d20f39)' '(date +%H:%M:%S)' ' (set_color d20f39 -b 51576d)' '(set_color white -b 51576d)(prompt_pwd)' '(set_color 51576d -b normal) ' '
end
