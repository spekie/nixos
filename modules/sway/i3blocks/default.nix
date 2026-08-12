{
  hm.xdg.configFile."i3blocks/mediaplayer" = {
    source = ./mediaplayer;
    executable = true;
  };
  hm.xdg.configFile."i3blocks/battery" = {
    source = ./battery;
    executable = true;
  };
  hm.xdg.configFile."i3blocks/cpu_usage" = {
    source = ./cpu_usage;
    executable = true;
  };
  hm.xdg.configFile."i3blocks/memory" = {
    source = ./memory;
    executable = true;
  };

  hm.xdg.configFile."i3blocks/config".text = ''
    [mediaplayer]
    command=./mediaplayer
    interval=5
    instance=mpd

    [battery]
    command=./battery
    interval=1
    LABEL=BAT
    BAT_NUMBER=1

    [cpu_usage]
    command=./cpu_usage
    interval=10
    LABEL=CPU 
    DECIMALS=0
    COLOR_NORMAL=#FFFFFF
    COLOR_WARN=#FFFFFF
    COLOR_CRIT=#FFFFFF

    [memory]
    command=./memory
    interval=30
    label=RAM 

    [date]
    command=date +'%A, %B %-d, %Y'
    interval=1

    [time]
    command=date +'%I:%M %p'
    interval=1
  '';
}
