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

function _check_command
    return (command -v $argv[1] > /dev/null)
end