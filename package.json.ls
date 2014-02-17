#!/usr/bin/env lsc -cj
name: 'gullet'
description: 'A taskbar app for building gulp projects'
version: '0.0.1'
homepage: 'http://github.com/clkao/gullet'
repository:
  type: 'git'
  url: 'https://github.com/clkao/gullet'
dependencies:
  LiveScript: \1.2.x
devDependencies:
  'gulp-util': '~2.2.14'
  'gulp-jade': '~0.4.2'
  'gulp-livescript': '~0.1.2'
  'gulp-stylus': '~0.0.12'
  'gulp': '~3.5.2'
  'nodewebkit': '~0.8.4'
scripts:
  build: 'gulp --require LiveScript'
  start: 'nodewebkit _public'
  prepublish: 'node node_modules/LiveScript/bin/lsc -c package.json.ls || lsc -c package.json.ls || echo'
engines:
  node: '>= 0.10.x'