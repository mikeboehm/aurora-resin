#!/bin/bash

# git --git-dir=/app/.git/ --work-tree=/app/ submodule init
# git --git-dir=/app/.git/ --work-tree=/app/ submodule update
# git clone https://github.com/mikeboehm/aurora-web.git /app/aurora-web
# git clone https://github.com/mikeboehm/Aurora.git /app/Aurora
# source /app/Aurora/install_dependencies.sh

lifx-http &
# sudo python /app/Aurora/aurora_exec.py &
# python /app/aurora-web/server.py &

exit 0
