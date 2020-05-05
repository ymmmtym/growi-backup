# Ruby

## rbenv

rubyのバージョン管理

<https://qiita.com/_am_/items/c1dbeb11f40bbbac8fd9>

## rbenv-gemset

```shell=
mkdir test-dir && cd test-dir

rbenv versions
rbversion="2.7.1"
rbenv local ${rbversion}

rbenv gemset list
gemsetname="test"
rbenv gemset create ${gemsetname} 
rbenv gemset init ${gemsetname}
```

### Reference
[ちょっとgem試したい時にrbenv-gemset使う](https://qiita.com/chinmo@github/items/6f531b4dd748c1cf5497)
[Ruby で Python の virtualenv 的なことをする](http://carumisu.hatenablog.jp/entry/2017/03/03/234615)
