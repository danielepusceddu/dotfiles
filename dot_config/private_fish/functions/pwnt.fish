#!/usr/bin/fish

function pwnt --description 'pwntools template with less typing'
    switch (count $argv)
        case 0
            printf "1 arg:  exe\n2 args: host, port\n3 args: host, port, exe\n"
        case 1
            pwn template --quiet $argv[1] > exploit.py
        case 2
            pwn template --quiet --host $argv[1] --port $argv[2] > exploit.py
        case 3
            pwn template --quiet --host $argv[1] --port $argv[2] $argv[3] > exploit.py
    end
end
