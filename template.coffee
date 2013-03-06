
exports.description = "Template for my Webkit-only pages"

exports.notes = "run `npm install` and `bower install`"

exports.warnOn = '*'

exports.template = (grunt, init, done) ->
  init.process {}, [], (err, props) ->
    files = init.filesToCopy props
    for key of files
      if key.match /^components\// then delete files[key]
      if key.match /^node_modules\// then delete files[key]
    init.copyAndProcess files, props
    done()