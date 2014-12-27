# filename-changer

[![Dependency status](https://img.shields.io/david/alexgorbatchev/filename-changer.svg?style=flat)](https://david-dm.org/alexgorbatchev/filename-changer)
[![devDependency Status](https://img.shields.io/david/dev/alexgorbatchev/filename-changer.svg?style=flat)](https://david-dm.org/alexgorbatchev/filename-changer#info=devDependencies)
[![Build Status](https://img.shields.io/travis/alexgorbatchev/filename-changer.svg?style=flat&branch=master)](https://travis-ci.org/alexgorbatchev/filename-changer)

[![NPM](https://nodei.co/npm/filename-changer.svg?style=flat)](https://npmjs.org/package/filename-changer)

A helper module to simplify life when dealing with file names. Basically, it allows you to use a simple pattern to edit file names.

## Installation

    npm install filename-changer

## Usage Example

```javascript
var filenameChanger = require('filename-changer');
var FILENAME = '/foo/bar/filename.ext';

filenameChanger(FILENAME, '{dirname}');
// /foo/bar/filename

filenameChanger(FILENAME, '{basename}');
// filename.ext

filenameChanger(FILENAME, '{filename}');
// filename

filenameChanger(FILENAME, '{ext}');
// ext

filenameChanger(FILENAME, '{dirname}/{filename}-processed.{ext}');
// /foo/bar/filename-processed.ext
```

## Testing

    npm test

## License

The MIT License (MIT)

Copyright 2014 Alex Gorbatchev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
