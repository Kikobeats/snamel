# Snamel

[![Greenkeeper badge](https://badges.greenkeeper.io/Kikobeats/snamel.svg)](https://greenkeeper.io/)

[![Build Status](http://img.shields.io/travis/Kikobeats/snamel/master.svg?style=flat)](https://travis-ci.org/Kikobeats/snamel)
[![Dependency status](http://img.shields.io/david/Kikobeats/snamel.svg?style=flat)](https://david-dm.org/Kikobeats/snamel)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/snamel.svg?style=flat)](https://david-dm.org/Kikobeats/snamel#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/snamel.svg?style=flat)](https://www.npmjs.org/package/snamel)
[![Gittip](http://img.shields.io/gittip/Kikobeats.svg?style=flat)](https://www.gittip.com/Kikobeats/)

> Convert Object and String Javascript types between different styles.

## Install

```bash
npm install snamel --save
```

## Usage

```coffee
snamel = require 'snamel'
```

## API

### Objects

#### smael(data: \<object>, to: \<type>])

Convert the keys of a object in a standard format.

`to` can be:

* camelCase

```json
{
	helloWorld: 'hello world'
}
```

* pascalCase

```json
{
	HelloWorld: 'hello world'
}
```

* snakeCase

```json
{
	hello_world: 'hello world'
}
```

* constantCase

```json
{
	HELLO_WORLD: 'hello world'
}
```

### Strings

#### smael(data: \<object>, to: \<type>])

`to` can be:

* upperCase

```
//=> "TEST STRING"
```

* lowerCase

```
//=> "test string"
```

* upperCaseFirst

```
//=> "Test"
```

* sentenceCase

```
//=> "test string"
```

* titleCase

```
//=> "A Simple Test"
```

* camelCase

```
//=> "testString"
```

* pascalCase

```
//=> "TestString"
```

* snakeCase

```
//=> "test_string"
```

* paramCase

```
//=> "test-string"
```

* dotCase

```
//=> "test.string"
```

* pathCase

```
//=> "test/string"
```

* constantCase

```
//=> "TEST_STRING"
```

* swapCase

```
//=> "tEST sTRING"
```

#### smael(data: \<object>, is: \<type>])

`is` can be:

* upperCase
* lowerCase

and return `true` or `false`.


## Examples

```coffee
snamel(data: obj2, to:'snakeCase')
snamel(data: obj1, to:'camelCase')
snamel(data: str1, to:'upperCase')
snamel(data: str2, to:'lowerCase')
snamel(data: str1, is:'lowerCase')
snamel(data: str2, is:'upperCase')
```

For more information about the transformation options check [change-case documentation](https://github.com/blakeembrey/change-case).

## License

MIT © [Kiko Beats](http://www.kikobeats.com)


