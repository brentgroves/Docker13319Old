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

# cd Alarms13319
# rm -rf node_modules

# cd ../Feat13319
# rm -rf node_modules

RemoveNodeModules Alarms13319

RemoveNodeModules Feat13319

RemoveNodeModules Okuma13319

RemoveNodeModules CompareContainer13319

RemoveNodeModules Plex13319

RemoveNodeModules React13319

RemoveNodeModules InsKep13319

RemoveNodeModules SetupContainer13319

RemoveNodeModules Tracker13319

RemoveNodeModules UDP13319



