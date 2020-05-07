#!/bin/bash

export url=$1

# check http_code
function check_http_code () {
    http_code="$(curl -s $1 -o /dev/null -w %{http_code} --connect-timeout 60)"
    echo ${http_code}
}

# delete without readme
ls | grep -v -E "^README.md" | xargs rm -rf

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
    http_code=$(check_http_code ${url})
    if [ "${http_code}" != "200" ];then
        echo "http_code is ${http_code}"
        exit 1
    fi
    curl -sL "${url}/_api/pages.get?path=${path}" | jq -r '.page.revision.body' > "${file}"
done