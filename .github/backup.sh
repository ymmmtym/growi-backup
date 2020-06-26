#!/bin/bash

export url=$1

# delete without ignore files
ls | grep -v -E "^README\.md|^.*\.py|^requirements\.txt" | xargs rm -rf

# get markdown files
export pathes=$(curl -sL "${url}/_api/pages.list?limit=10000&path=/" | jq -r '.pages[].path' | sort)

for path in ${pathes}; do
    dir=$(echo ${path%/*} | cut -c 2- | nkf -w --url-input)
    file=$(echo "${path#*/}.md" | nkf -w --url-input)
    if [ ${dir} ];then
        mkdir -p ${dir}
    fi
    if [ "${file}" = ".md" ];then
        file="index.md"
    fi
    curl -sL "${url}/_api/pages.get?path=${path}" | jq -r '.page.revision.body' > "${file}"
    echo "${file} was downloaded successfully!"
done