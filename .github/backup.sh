#!/bin/bash

export url="https://ymmmtym.growi.cloud"

# delete without readme
ls | grep -v -E "^README.md" | xargs rm -rf

# get markdown files
for path in $(curl -sL "${url}/_api/pages.list?path=/" | jq -r '.pages[].path'); do
    dir=$(echo ${path%/*} | cut -c 2-)
    file=$(echo "${path#*/}.md" | nkf -w --url-input)
    if [ ${dir} ];then
        mkdir -p ${dir}
    fi
    if [ "${file}" = ".md" ];then
        file="index.md"
    fi
    curl -sL "${url}/_api/pages.get?path=${path}" | jq -r '.page.revision.body' > "${file}"
done