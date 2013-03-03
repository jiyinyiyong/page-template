
exports.description = "Template for my Webkit-only pages"

exports.notes = "run `npm install` and `bower install`"

exports.warnOn = '*'

exports.template = (grunt, init, done) ->
  init.process {}, [], (err, props) ->
    props.devDependencies =
      'grunt-contrib-coffee': '*'
      'grunt-contrib-node': '*'
      'grunt-contrib-': '*'
    files = init.filesToCopy props
    init.copyAndProcess files, props
    done()