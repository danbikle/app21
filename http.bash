#!/bin/bash

# ~ann/app21/http.bash

cd ~ann/app21/
. ~ann/app21/app21env.bash

~ann/node/bin/node node_modules/http-server/bin/http-server
exit
