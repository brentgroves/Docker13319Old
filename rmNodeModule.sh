#!/bin/zsh
# https://scriptingosx.com/zsh/
emulate -LR zsh # reset zsh options
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

function RemoveNodeModules() {
    # echo "${1}"
    # DATE=$(date +'20%y-%m-%d')
    nodeModDir="${1}/node_modules"
    echo "${nodeModDir}"
    rm -rf ${nodeModDir}
  
}

RemoveNodeModules ../eng13319
RemoveNodeModules ../tool13319
RemoveNodeModules ../prod13319
RemoveNodeModules ../feat13319
RemoveNodeModules ../mailer13319
RemoveNodeModules ../alarms13319
rm -rf ../tool13319/build
rm -rf ../eng13319/build
rm -rf ../prod13319/build



