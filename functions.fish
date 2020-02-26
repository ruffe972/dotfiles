function my-cwebp
    cwebp -m 6 -q 94 $argv[1] -o $argv[1]
end

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