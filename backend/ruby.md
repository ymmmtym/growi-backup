# Ruby

## rbenv

rubyのバージョン管理

<https://qiita.com/_am_/items/c1dbeb11f40bbbac8fd9>

## rbenv-gemset

install

```shell=
rbenv init

mkdir test-dir && cd test-dir

rbenv versions
rbversion="2.7.1"
rbenv local ${rbversion}

rbenv gemset list
gemsetname="test"
rbenv gemset create ${rbversion} ${gemsetname} 
rbenv gemset init ${gemsetname}

gem list
```

uninstall

```shell=
rbenv uninstall ${rbversion}

# If old files exist
rm -fr ~/.rbenv/versions/${rbversion}
rbenv rehash
```

### Reference

[ちょっとgem試したい時にrbenv-gemset使う](https://qiita.com/chinmo@github/items/6f531b4dd748c1cf5497)
[Ruby で Python の virtualenv 的なことをする](http://carumisu.hatenablog.jp/entry/2017/03/03/234615)

## bundler

### Reference

[bundler、bundle execについて　※自分用メモ](https://qiita.com/dawn_628/items/1821d4eef22b9f45eea8)
