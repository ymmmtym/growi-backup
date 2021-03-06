# JavaScript(ES6)

## Points

- arrow function
- constant scope
- constructor override
- default export, named export
- forEach, find, filter, map method

## Type of variable declaration

There are three ways to declare variables in javascript.

- var
- let
- const

### var

```js
var hoge_var = 10;
var hoge_var = 100; // redeclarable

hoge_var = 1000; // reassignable
```

### let

```js
let hoge_let = 20;
let hoge_let = 200; // cannot be redeclared

hoge_let = 2000; // reassignable
```

### const

```js
const test_const = 30;
const test_const = 300; // cannot be redeclared

test_const = 3000; // cannot be reassigned
```

## scope

- global variables
- local variables

### global variables

Since global variables can be accessed from anywhere, it is easy to cause conflict with other variables.
Therefore, an error may occur or the output may not be performed as expected.

### local variables

Variables used only in for statements and functions

## Reference

<https://github.com/baku89/pentool>
<https://github.com/meenie/band.js>
