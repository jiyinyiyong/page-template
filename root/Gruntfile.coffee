
{spawn} = require "child_process"

module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      compile:
        options:
          bare: yes
        files:
          "page/main.js": "action/main.coffee"
    jade:
      compile:
        options:
          data:
            debug: no
          pretty: yes
        files:
          "page/index.html": "layout/index.jade"
    stylus:
      compile:
        options: {}
        files:
          "page/page.css": "layout/page.styl"
    watch:
      coffee:
        files: "action/*.coffee"
        tasks: "coffee"
      stylus:
        files: "layout/*styl"
        tasks: "stylus"
      jade:
        files: "layout/*.jade"
        tasks: "jade"

  # grunt.registerTask "dev", ["reload", "watch"]

  grunt.registerTask "doodle", "watch file reload", ->
    doodle = spawn "doodle", ["index.html", "page/"]
    doodle.stdout.pipe process.stdout
    doodle.stderr.pipe process.stderr

  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-stylus'

  grunt.registerTask "dev", ["doodle", "coffee", "jade", "stylus", "watch"]