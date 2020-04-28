#!/bin/bash

url="https://ymmmtym.growi.cloud"

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