#!/bin/bash

url=$1

# delete without ignore files
ls | grep -v -E "^README\.md|^.*\.sh|^.*\.py|^requirements\.txt" | xargs rm -rf {}

# get markdown files
paths=$(curl -sL "${url}/_api/pages.list?limit=10000&path=/" | jq -r '.pages[].path' | sort) || exit 1

PREV_IFS=$IFS
IFS="
"

for path in ${paths}; do
    IFS=$PREV_IFS
    dir=$(echo ${path%/*} | cut -c 2- | nkf -w --url-input)
    file=$(echo "${path#*/}.md" | nkf -w --url-input)
    if [ ${dir} ];then
        mkdir -p ${dir}
    fi
    if [ "${file}" = ".md" ];then
        file="index.md"
    fi
    body=$(curl -sL "${url}/_api/pages.get?path=${path}" | jq -r '.page.revision.body') || exit 1
    echo -e "${body}" > "${file}"
    echo "${file} was downloaded successfully!"
done