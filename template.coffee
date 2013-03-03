
exports.description = "Template for my Webkit-only pages"

exports.notes = "run `npm install` and `bower install`"

exports.warnOn = '*'

exports.template = (grunt, init, done) ->
  init.process {}, [], (err, props) ->
    files = init.filesToCopy props
    init.copyAndProcess files, props
    done()