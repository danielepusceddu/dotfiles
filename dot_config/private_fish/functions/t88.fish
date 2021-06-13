#!/usr/bin/fish

function t88
    rm -r /tmp/are
    mkdir /tmp/are
    cp $argv[1] /tmp/are/a.s
    cp as88.exe t88.exe CWSDPMI.EXE /tmp/are/
    dosbox -c "mount C /tmp/are" -c "C:" -c "as88 a" -c "t88 a"
end
