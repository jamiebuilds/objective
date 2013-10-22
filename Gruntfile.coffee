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
    meta: version: '0.0.4'

    # Clean
    clean: dist:
      files: './dist/'

    # Sass
    sass: dist:
      options:
        style: 'expanded'
      files: './dist/objective.css': './src/objective.scss'

    # Copy
    copy: dist:
      files: [
        expand: true
        cwd: './src/'
        src: ['**']
        dest: './dist/'
      ]

    # Watch
    watch: dist:
      files: ['./src/**/*.scss']
      tasks: ['build']

  # Tasks
  grunt.registerTask 'build',   ['clean', 'sass', 'copy']
  grunt.registerTask 'default', ['build', 'watch']
