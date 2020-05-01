# Home
https://gitpress.io/u/1192

## tmp
<https://www.codeproject.com/Articles/1214409/Learn-YAML-in-five-minutes>

# API
## Tools
<https://qiita.com/os1ma/items/9eadcfb91fa26af762be>

## Trello
### Rest API

```bash
# var
user=<>
key=<>
token=<>

# members
curl -s "https://trello.com/1/members/${user}/boards?key=${key}&token=${token}" | jq .

# boards
curl -s "https://trello.com/1/boards/$(curl -s "https://trello.com/1/members/${user}/boards?key=${key}&token=${token}" | jq -r '.[].id')/lists?key=${key}&token=${token}" | jq .


# example
for board in $(curl -s "https://trello.com/1/members/${user}/boards?key=${key}&token=${token}" | jq -r ".[].id"); do
    for list in $(curl -s "https://trello.com/1/boards/${board}/lists?key=${key}&token=${token}" | jq -r ".[].id"); do
        for card in $(curl -s "https://trello.com/1/lists/${list}/cards?key=${key}&token=${token}" | jq .); do
            echo ${card}
        done
    done
done
```

## Wiki.js
### docker
[Doc](https://docs.requarks.io/install/docker)

## Growi
### docker
[Doc](https://docs.growi.org/ja/admin-guide/getting-started/docker-compose.html)

### API
```bash=
curl -sL "https://ymmmtym.growi.cloud/_api/pages.list?path=/" | jq '.pages'

# example
for path in $(curl -sL "https://ymmmtym.growi.cloud/_api/pages.list?path=/" | jq -r '.pages[].path'); do
    curl -sL "https://ymmmtym.growi.cloud/_api/pages.get?path=${path}" | jq -r '.page.revision.body'
done
```
