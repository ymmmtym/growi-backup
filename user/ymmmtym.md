# ymmmtym

## All Pages

$lsx(/user/ymmmtym)

## Public Pages

<https://gitpress.io/u/1192>
<https://scrapbox.io/hyukihisa378-59128284/Scrapbox%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9>
<https://ymmmtym.kibe.la/>

## Monitoring

<https://uptimerobot.com/dashboard#mainDashboard>

## Roadmap

<https://github.com/kamranahmedse/developer-roadmap>
<https://qiita.com/shuntaro_tamura/items/e1a20e33c57c71679688>
<https://wp-p.info/>

## Learning

<https://learningbox.online/>
<http://gacco.org/>
<https://connpass.com/>
<https://www.doorkeeper.jp/>
<https://japan.googleblog.com/>
<http://www.ieice-hbkb.org/portal/doc_index.html>
<http://www.jusnet.co.jp/business/index.shtml>
<https://www.qwiklabs.com/?locale=ja>

## tmp

<https://www.codeproject.com/Articles/1214409/Learn-YAML-in-five-minutes>
<https://gitter.im/>
<https://qiita.com/os1ma/items/9eadcfb91fa26af762be>

## Trello

### Rest API

```bash
# vars
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

#### Reference

<https://se.miyabikno-jobs.com/python-api-trello/>
<https://thinkami.hatenablog.com/entry/2016/03/01/003050>
<http://blog.serverworks.co.jp/tech/2016/05/16/trello-api/>

## Wiki.js

### Docker

[Doc](https://docs.requarks.io/install/docker)
<https://github.com/Requarks/wiki>

## Growi

### docker

[Doc](https://docs.growi.org/ja/admin-guide/getting-started/docker-compose.html)
<https://github.com/weseek/growi>

### API

```bash=
curl -sL "https://ymmmtym.growi.cloud/_api/pages.list?path=/" | jq '.pages'

# example
for path in $(curl -sL "https://ymmmtym.growi.cloud/_api/pages.list?path=/" | jq -r '.pages[].path'); do
    curl -sL "https://ymmmtym.growi.cloud/_api/pages.get?path=${path}" | jq -r '.page.revision.body'
done
```

## badge

Markdown License badges <https://gist.github.com/lukas-h/2a5d00690736b4c3a7ba>

original ![color:ff69b4](https://img.shields.io/badge/color-ff69b4-ff69b4.svg?longCache=true)

gitpod [![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/${org(user)}/${repo})

## Discogs

### Favorite list

<https://www.discogs.com/ja/seller/alain.v2/profile>
<https://www.discogs.com/ja/user/GESSCOM>
<https://www.discogs.com/ja/seller/Boom_Service/profile>
<https://www.discogs.com/ja/seller/bordentownrecords/profile>
<https://www.discogs.com/ja/seller/1207vinyl.dk/profile>
<https://www.discogs.com/ja/user/beatboprecords1>

### Temporary list

<https://www.discogs.com/ja/user/Analogy_Mountain>
