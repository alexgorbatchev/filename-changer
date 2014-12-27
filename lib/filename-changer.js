var path;

path = require('path');

module.exports = function(input, pattern) {
  var basename, dirname, ext, filename, result;
  result = pattern;
  dirname = path.dirname(input);
  basename = path.basename(input);
  filename = path.basename(input, path.extname(input));
  ext = path.extname(input).substr(1);
  return result.replace(/\{dirname\}/g, dirname).replace(/\{basename\}/g, basename).replace(/\{filename\}/g, filename).replace(/\{ext\}/g, ext);
};
