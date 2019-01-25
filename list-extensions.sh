#!/bin/bash

HERE=$(cd $(dirname "$0") && pwd)
code --list-extensions | xargs -L 1 echo code --install-extension > ${HERE}/install-extensions.sh
chmod +x ${HERE}/install-extensions.sh
