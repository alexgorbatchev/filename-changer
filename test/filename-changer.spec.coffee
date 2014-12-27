require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
path = require 'path'
# using compiled JavaScript file here to be sure module works
filenameChanger = require '../lib/filename-changer.js'

expect = chai.expect
chai.use require 'sinon-chai'

FILENAME = '/foo/bar/filename.ext'

describe 'filename-changer', ->
  it '{dirname} - path to the file without trailing slash', ->
    expect(filenameChanger FILENAME, '{dirname}').to.eql path.dirname FILENAME

  it '{basename} - full file name including extension', ->
    expect(filenameChanger FILENAME, '{basename}').to.eql path.basename FILENAME

  it '{filename} - file name without extension', ->
    expect(filenameChanger FILENAME, '{filename}').to.eql path.basename FILENAME, path.extname FILENAME

  it '{ext} - file extension without a dot', ->
    expect(filenameChanger FILENAME, '{ext}').to.eql path.extname(FILENAME).substr 1

  it 'can combine all to rebuild original input', ->
    expect(filenameChanger FILENAME, '{dirname}/{filename}.{ext}').to.eql FILENAME
