#!/bin/zsh
# https://scriptingosx.com/zsh/
emulate -LR zsh # reset zsh options
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

function CheckIn() {
    cd ${1}
    git add -A
    git commit -m "added/changed source"
    git push -u origin main
}

CheckIn ../eng13319api



