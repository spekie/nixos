{
  programs.bash = {
    enable = true;

    promptInit = ''
      PS1="\[\033[37m\][\u@\h:\w]\\$ \[$(tput sgr0)\]"
    '';

    shellAliases = {
      ls = "ls --color=auto --group-directories-first";
      dir = "dir --color=auto --group-directories-first";
      vdir = "vdir --color=auto --group-directories-first";
      grep = "grep --color";
      diff = "diff --color";
    };
  };

  hm.programs.bash = {
    enable = true;

    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
        exec dbus-run-session sway
      fi
    '';
  };
}
