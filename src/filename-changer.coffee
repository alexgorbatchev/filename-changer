path = require 'path'

module.exports = (input, pattern) ->
  result   = pattern
  dirname  = path.dirname input
  basename = path.basename input
  filename = path.basename input, path.extname input
  ext      = path.extname(input).substr 1

  result
    .replace /\{dirname\}/g, dirname
    .replace /\{basename\}/g, basename
    .replace /\{filename\}/g, filename
    .replace /\{ext\}/g, ext
