<div class="panel panel-default">
  <div class="panel-body">

# 目次

```
@[toc]
```

@[toc]

  </div>
</div>

# :pencil: Block Elements

## Headers 見出し

先頭に`#`をレベルの数だけ記述します。

```
# 見出し1
## 見出し2
### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6
```

### 見出し3
#### 見出し4
##### 見出し5
###### 見出し6

## Block 段落

空白行を挟むことで段落となります。aaaa

```
段落1
(空行)
段落2
```

段落1

段落2

## Br 改行

改行の前に半角スペース`  `を2つ記述します。
***この挙動は、オプションで変更可能です***

```
hoge
fuga(スペース2つ)
piyo
```

hoge
fuga
piyo

## Blockquotes 引用

先頭に`>`を記述します。ネストは`>`を多重に記述します。

```
> 引用
> 引用
>> 多重引用
```

> 引用
> 引用
>> 多重引用

## Code コード

`` `バッククオート` `` 3つ、あるいはチルダ`~`３つで囲みます。

```
print 'hoge'
```

### シンタックスハイライトとファイル名

- [highlight.js Demo](https://highlightjs.org/static/demo/) の common カテゴリ内の言語に対応しています


~~~
```javascript:mersenne-twister.js
function MersenneTwister(seed) {
  if (arguments.length == 0) {
    seed = new Date().getTime();
  }

  this._mt = new Array(624);
  this.setSeed(seed);
}
```
~~~

```javascript:mersenne-twister.js
function MersenneTwister(seed) {
  if (arguments.length == 0) {
    seed = new Date().getTime();
  }

  this._mt = new Array(624);
  this.setSeed(seed);
}
```

### インラインコード

`` `バッククオート` `` で単語を囲むとインラインコードになります。

```
これは `インラインコード`です。
```

これは `インラインコード`です。

## pre 整形済みテキスト

半角スペース4個もしくはタブで、コードブロックをpre表示できます

```
    class Hoge
        def hoge
            print 'hoge'
        end
    end
```

    class Hoge
        def hoge
            print 'hoge'
        end
    end

## Hr 水平線

アンダースコア`_` 、アスタリスク`*`を3つ以上連続して記述します。

```
***
___
---
```

***
___
---



# :pencil: Typography

## 強調
### em

アスタリスク`*`もしくはアンダースコア`_`1個で文字列を囲みます。

```
これは *イタリック* です
これは _イタリック_ です
```

これは *イタリック* です
これは _イタリック_ です

### strong

アスタリスク`*`もしくはアンダースコア`_`2個で文字列を囲みます。

```
これは **ボールド** です
これは __ボールド__ です
```

これは **ボールド** です
これは __ボールド__ です

### em + strong

アスタリスク`*`もしくはアンダースコア`_`3個で文字列を囲みます。

```
これは ***イタリック＆ボールド*** です
これは ___イタリック＆ボールド___ です
```

これは ***イタリック＆ボールド*** です
これは ___イタリック＆ボールド___ です

# :pencil: Images

`![Alt文字列](URL)` で`<img>`タグを挿入できます。

```markdown
![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")
```

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

画像の大きさなどの指定をする場合はimgタグを使用します。

```html
<img src="https://octodex.github.com/images/dojocat.jpg" width="200px">
```

<img src="https://octodex.github.com/images/dojocat.jpg" width="200px">


# :pencil: Link

## Markdown 標準

`[表示テキスト](URL)`でリンクに変換されます。

```
[Google](https://www.google.co.jp/)
```

[Google](https://www.google.co.jp/)

## Crowi 互換

```
[/Sandbox]
&lt;/user/admin1>
```

[/Sandbox]
</user/admin1>

## Pukiwiki like linker

(available by [weseek/growi-plugin-pukiwiki-like-linker
](https://github.com/weseek/growi-plugin-pukiwiki-like-linker) )

最も柔軟な Linker です。
記述中のページを基点とした相対リンクと、表示テキストに対するリンクを同時に実現できます。

```
[[./Bootstrap3]]
Bootstrap3のExampleは[[こちら>./Bootstrap3]]
```

[[../user]]
Bootstrap3のExampleは[[こちら>./Bootstrap3]]

# :pencil: Lists

## Ul 箇条書きリスト

ハイフン`-`、プラス`+`、アスタリスク`*`のいずれかを先頭に記述します。
ネストはタブで表現します。

```
- リスト1
    - リスト1_1
        - リスト1_1_1
        - リスト1_1_2
    - リスト1_2
- リスト2
- リスト3
```

- リスト1
    - リスト1_1
        - リスト1_1_1
        - リスト1_1_2
    - リスト1_2
- リスト2
- リスト3

## Ol 番号付きリスト

`番号.`を先頭に記述します。ネストはタブで表現します。
番号は自動的に採番されるため、すべての行を1.と記述するのがお勧めです。

```
1. 番号付きリスト1
    1. 番号付きリスト1-1
    1. 番号付きリスト1-2
1. 番号付きリスト2
1. 番号付きリスト3
```

1. 番号付きリスト1
    1. 番号付きリスト1-1
    1. 番号付きリスト1-2
1. 番号付きリスト2
1. 番号付きリスト3


## タスクリスト

```
- [ ] タスク 1
    - [x] タスク 1.1
    - [ ] タスク 1.2
- [x] タスク2
```

- [ ] タスク 1
    - [x] タスク 1.1
    - [ ] タスク 1.2
- [x] タスク2


# :pencil: Table

## Markdown 標準

```markdown
| Left align | Right align | Center align |
|:-----------|------------:|:------------:|
| This       | This        | This         |
| column     | column      | column       |
| will       | will        | will         |
| be         | be          | be           |
| left       | right       | center       |
| aligned    | aligned     | aligned      |

OR

Left align | Right align | Center align
:--|--:|:-:
This       | This        | This
column     | column      | column
will       | will        | will
be         | be          | be
left       | right       | center
aligned    | aligned     | aligned
```

| Left align | Right align | Center align |
|:-----------|------------:|:------------:|
| This       | This        | This         |
| column     | column      | column       |
| will       | will        | will         |
| be         | be          | be           |
| left       | right       | center       |
| aligned    | aligned     | aligned      |

## TSV (crowi-plus 独自記法)

```
::: tsv
Content Cell 	Content Cell
Content Cell 	Content Cell
:::
```

::: tsv
Content Cell	Content Cell
Content Cell	Content Cell
:::

## TSV ヘッダ付き (crowi-plus 独自記法)

```
::: tsv-h
First Header	Second Header
Content Cell	Content Cell
Content Cell	Content Cell
:::
```

::: tsv-h
First Header	Second Header
Content Cell	Content Cell
Content Cell	Content Cell
:::

## CSV (crowi-plus 独自記法)

```
::: csv
Content Cell,Content Cell
Content Cell,Content Cell
:::
```

::: csv
Content Cell,Content Cell
Content Cell,Content Cell
:::

## CSV ヘッダ付き (crowi-plus 独自記法)

```
::: csv-h
First Header,Second Header
Content Cell,Content Cell
Content Cell,Content Cell
:::
```

::: csv-h
First Header,Second Header
Content Cell,Content Cell
Content Cell,Content Cell
:::


# :pencil: Footnote

脚注への参照[^1]を書くことができます。また、インラインの脚注^[インラインで記述できる脚注です]を入れる事も出来ます。

長い脚注は[^longnote]のように書くことができます。

[^1]: 1つめの脚注への参照です。

[^longnote]: 脚注を複数ブロックで書く例です。

    後続の段落はインデントされて、前の脚注に属します。


# :pencil: Emoji

See [emojione](https://www.emojione.com/)

:smiley: :smile: :laughing: :innocent: :drooling_face:

:family: :family_man_boy: :family_man_girl: :family_man_girl_girl: :family_woman_girl_girl:

:thumbsup: :thumbsdown: :open_hands: :raised_hands: :point_right:

:apple: :green_apple: :strawberry: :cake: :hamburger:

:basketball: :football: :baseball: :volleyball: :8ball:

:hearts: :broken_heart: :heartbeat: :heartpulse: :heart_decoration:

:watch: :gear: :gem: :wrench: :envelope:


# :pencil: Math

See [MathJax](https://www.mathjax.org/).

## Inline Formula

When $a 
e 0$, there are two solutions to \(ax^2 + bx + c = 0\) and they are
  $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$

## The Lorenz Equations

$$
egin{align}
\dot{x} & = \sigma(y-x) \
\dot{y} & = ho x - y - xz \
\dot{z} & = -eta z + xy
nd{align}
$$


## The Cauchy-Schwarz Inequality

$$
\left( \sum_{k=1}^n a_k b_k ight)^{\!\!2} \leq
 \left( \sum_{k=1}^n a_k^2 ight) \left( \sum_{k=1}^n b_k^2 ight)
$$

## A Cross Product Formula

$$
\mathbf{V}_1 	imes \mathbf{V}_2 =
 egin{vmatrix}
  \mathbf{i} & \mathbf{j} & \mathbf{k} \
  rac{\partial X}{\partial u} & rac{\partial Y}{\partial u} & 0 \
  rac{\partial X}{\partial v} & rac{\partial Y}{\partial v} & 0 \
 nd{vmatrix}
$$


## The probability of getting $\left(kight)$ heads when flipping $\left(night)$ coins is:

$$
P(E) = {n 