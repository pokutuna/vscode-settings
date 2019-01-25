#!/bin/bash

HERE=$(cd $(dirname "$0") && pwd)
# from https://stackoverflow.com/questions/35773299/how-can-you-export-vs-code-extension-list
code --list-extensions | xargs -L 1 echo code --install-extension > ${HERE}/install-extensions.sh
chmod +x ${HERE}/install-extensions.sh
