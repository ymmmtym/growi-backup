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

### Edit Commit
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

## Zenhub
"Closes #{issue_number}"

## Reference
<https://gist.github.com/PurpleBooth/109311bb0361f32d87a2>
<https://github.com/github/gitignore>
[チーム開発におけるプルリクの作法](https://qiita.com/ikuwow/items/fb52a54c086398eb5b92)
[誰にとってもわかりやすいGitのコミットメッセージを考える](https://www.tam-tam.co.jp/tipsnote/program/post16686.html)


