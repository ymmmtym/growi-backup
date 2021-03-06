# Git

## Branch Model

gitlab-flow

- master(default、CRUD)
- feature/hotfix
- pre-production(Lab env)
- production

other

- develop
- bugfix
- release

## Opetation

### Config

#### Init

```bash=
NAME=<put your name>
EMAIL=<put your email>

git config --global user.name "${NAME}"
git config --global user.email "${EMAIL}"

git config -l
```

#### Unset

```bash=
git config --global --unset user.name
git config --global --unset user.email
```

### Init

```bash=
git checkout master
git checkout -b production
git push -u origin production
```

### Commit

```bash=
BRANCH=<put branch name> # ex) feature/index-design

git checkout master
git pull
git checkout -b ${BRANCH}

git add .
git commit -m "${commit_msg}"
git push origin ${BRANCH}

git checkout master
git branch -d ${BRANCH}

# same procedure for hotfix
```

#### Edit

```bash=
git reset --hard HEAD^
git rebase -i ${commit_id}
```

#### Remove
remove cache
```bash=
git rm -r --cached ${file}
```

#### Reset

```bash=
git checkout . --
git clean -df
```

#### Stash

```bash=
git stash save # git stash
git stash list
git stash apply stash@{0}
git stash drop stash@{0}
git stash pop stash@{0}
```

<https://qiita.com/chihiro/items/f373873d5c2dfbd03250>

## Github

issueをクローズする時、コミットメッセージの頭を以下の様にする。
コミットメッセージが含まれるコミットがPR&Mergeされた時クローズされる
"Closes #{issue_number}"

### GitHub CLI

<https://dev.classmethod.jp/articles/shuntaka9576-gh/>

### hub

<https://dev.classmethod.jp/articles/hub/>

### README

good samples

<https://gist.github.com/PurpleBooth/109311bb0361f32d87a2>
<https://github.com/dbader/readme-template>

## Reference

<https://gist.github.com/PurpleBooth/109311bb0361f32d87a2>
<https://github.com/github/gitignore>
<https://github.com/azu/awesome-commit-english>
[チーム開発におけるプルリクの作法](https://qiita.com/ikuwow/items/fb52a54c086398eb5b92)
[誰にとってもわかりやすいGitのコミットメッセージを考える](https://www.tam-tam.co.jp/tipsnote/program/post16686.html)
[GitFlowをやめて本番リリースが楽になった話](https://qiita.com/koyopro/items/b4569285efc22c6397c6)
[Gitでよく使用するコマンドをGIFアニメで解説](https://coliss.com/articles/build-websites/operation/work/useful-git-commands-visualized.html)
[Gitをもっと使いこなそう！ ちょっと上級な便利コマンド32選](https://liginc.co.jp/387757)
[issueHunt](https://issuehunt.io/)
