{ config, pkgs, ... }:

let
  cleaner = pkgs.writeShellScript "cleaner" ''
    exec kitten icat --clear --stdin no --transfer-mode memory </dev/null >/dev/tty
  '';
in

{
  environment.systemPackages = with pkgs; [
    lf
    pistol
    bat
  ];

  hm.programs.lf = {
    enable = true;

    extraConfig =''
      set cleaner ${cleaner}
    '';

    previewer.source = pkgs.writeShellScript "previewer" ''
draw() {
  kitten icat --stdin no --transfer-mode memory --place "''${w}x''${h}@''${x}x''${y}" "$1" </dev/null >/dev/tty
  exit 1
}

file="$1"
w="$2"
h="$3"
x="$4"
y="$5"

case "$(file -Lb --mime-type "$file")" in 
  image/*)
    draw "$file"
    ;;
  video/*)
    # vidthumb is from here:
    # https://raw.githubusercontent.com/duganchen/kitty-pistol-previewer/main/vidthumb
    draw "$(vidthumb "$file")"
    ;;
  text/*)
    bat --strip-ansi=always --color=always --style=plain --line-range=:200 -- "$file" ||
    cat -v -- "$file"
    exit $?
    ;;
esac

pistol "$file"
    '';
  };
}
