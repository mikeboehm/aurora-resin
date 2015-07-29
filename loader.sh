#!/bin/bash

# git --git-dir=/app/.git/ --work-tree=/app/ submodule init
# git --git-dir=/app/.git/ --work-tree=/app/ submodule update


lifx-http &
sudo python /app/Aurora/aurora_exec.py &
