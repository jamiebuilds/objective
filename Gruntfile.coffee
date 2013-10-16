# global module: false
module.exports = (grunt) ->

  # Modules
  grunt.loadNpmTasks 'grunt-init'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  # Grunt Tasks
  grunt.initConfig
    meta: version: '0.0.2'

    # Clean
    clean: dist:
      files: './dist/'

    # Sass
    sass: dist:
      options:
        style: 'expanded'
        loadPath: 'bower_components'
      files: './dist/app.css': './src/styles/app.scss'

    # Copy
    # copy: dist:
    #   files: [
    #     expand: true
    #     cwd: './src/'
    #     src: ['**']
    #     dest: './dist/'
    #   ]

    # Watch
    watch:
      styles:
        files: ['./src/**/*.scss']
        tasks: ['sass']

  # Tasks
  grunt.registerTask 'build',   ['clean', 'sass']
  grunt.registerTask 'default', ['build', 'watch']
