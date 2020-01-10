function rg
    if test -n "$RANGER_LEVEL"
        exit
        return
    end
    set dir (mktemp -t ranger_cd.XXX)
    ranger --choosedir=$dir
    cd (cat $dir) $argv
    rm $dir
    commandline -f repaint
end