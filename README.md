![](https://raw.githubusercontent.com/b4b4r07/screenshots/master/zspec/logo.png)

[![](https://img.shields.io/travis/b4b4r07/zspec.svg?style=flat-square)](https://travis-ci.org/b4b4r07/zspec) [![](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)][license]

zspec is a testing framework for zsh

## Installation

By using [zplug](https://github.com/b4b4r07/zplug), you can easily install [zspec](https://github.com/b4b4r07/zspec).

```zsh
zplug "b4b4r07/zspec", \
    as:command, \
    of:bin
```

## Usage

### Writing Tests

Test files are zsh files with one or more test blocks.

```zsh
describe "a passing test"
  assert equal "foo" "foo"
end

```

### Running Tests

zspec reads the specified files, or the files ending with `*_test.zsh` in the current working directory if no files are given.

```console
$ zspec path/to/tests/*.zsh
```

## License

[MIT][license]

[license]: http://b4b4r07.mit-license.org
