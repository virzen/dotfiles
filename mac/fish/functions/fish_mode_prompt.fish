function fish_mode_prompt --description 'Displays the current mode'
    # Do nothing if not in vi mode
    # if test "$fish_key_bindings" = "fish_vi_key_bindings"
    #     switch $fish_bind_mode
    #         case default
    #             set_color --bold blue
    #             echo 🅽
    #         case insert
    #             set_color green
    #             echo 🅸
    #         case replace_one
    #             set_color --bold green
    #             echo 🆁
    #         case visual
    #             set_color brmagenta
    #             echo 🆅
    #     end
    #     set_color normal
    #     echo -n '  '
    # end
end
