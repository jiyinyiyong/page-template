
require 'shelljs/make'

command = (code) ->
  exec code, async: yes

target.doodle = ->
  exec 'pkill -f doodle', (code, output) ->
    command 'doodle index.html build/ log:yes'

target.jade = ->
  command 'jade -o ./ -wP page/index.jade'

target.coffee = ->
  command 'coffee -o src/ -bc coffee/'

target.cjsify = ->
  command 'cjsify -o build/build.js --inline-source-map -w coffee/main.coffee'

target.dev = ->
  target.jade()
  target.cjsify()
  target.doodle()

target.build = ->
  target.coffee()