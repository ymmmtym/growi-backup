#!/bin/bash

export url=$1

# delete without ignore files
ls | grep -v -E "^README\.md|^.*\.py|^requirements\.txt" | xargs rm -rf

# get markdown files
for path in $(curl -sL "${url}/_api/pages.list?path=/" | jq -r '.pages[].path'); do
    dir=$(echo ${path%/*} | cut -c 2- | nkf -w --url-input)
    file=$(echo "${path#*/}.md" | nkf -w --url-input)
    if [ ${dir} ];then
        mkdir -p ${dir}
    fi
    if [ "${file}" = ".md" ];then
        file="index.md"
    fi
    curl -sL "${url}/_api/pages.get?path=${path}" | jq -r '.page.revision.body' > "${file}"
done