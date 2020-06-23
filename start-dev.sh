#!/bin/bash
( cd /home/node/App13319/Feat13319 && npm start) & ( cd /home/node/App13319/React13319 && node start) & ( cd /home/node/App13319/Alarms13319 && node app)  & ( cd /home/node/App13319/Kep13319 && node app)  
# Add this to the end to suppress all output
#  > /dev/null 2>&1 
