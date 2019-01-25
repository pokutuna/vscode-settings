#!/bin/bash

HERE=$(cd $(dirname "$0") && pwd)
TARGET=${TARGET:-~/Library/Application Support/Code/User}
FILES=$(ls "${HERE}" | grep -v $(basename "$0") | grep -vE '\.md|\.sh')

for file in $FILES; do
    ln -s "${HERE}/${file}" "${TARGET}/"
done
