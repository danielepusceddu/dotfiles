#!/usr/bin/fish

function as88
    rm -r /tmp/are
    mkdir /tmp/are
    cp $argv[1] /tmp/are/a.s
    cp as88.exe s88.exe CWSDPMI.EXE /tmp/are/
    dosbox -c "mount C /tmp/are" -c "C:" -c "as88 a"
end
