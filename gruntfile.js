module.exports = function(grunt) {

  grunt.initConfig({
    watch: {
      ejs: {
        files: ['views/**'],
        options: {
          livereload: true
        }
      },
      js: {
        files: ['public/js/**', 'models/**/*.js', 'schemas/**/*.js'],
        //tasks: ['jshint'],
        options: {
          livereload: true
        }
      },
      uglify: {
        files: ['public/**/*.js'],
        tasks: ['jshint'],
        options: {
          livereload: true
        }
      }
      
    },

    uglify: {
      development: {
        files: {
          'public/build/admin.min.js': 'public/js/admin.js',
          'public/build/detail.min.js': [
            'public/js/detail.js'
          ]
        }
      }
    },

    nodemon: {
     dev: {
          script: 'app.js',
          options: {
               args: [],
               nodeArgs: ['--debug'],
               ignore: ['README.md', 'node_modules/**', '.DS_Store'],
               ext: 'js',
               watch: ['./'],
               delay: 1000,
               env: {
                    PORT: '3000'
               },
               cwd: __dirname
          }
     }
},


    concurrent: {
      tasks: ['nodemon', 'watch', 'uglify'],
      options: {
        logConcurrentOutput: true
      }
    }
  })

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-nodemon')
  grunt.loadNpmTasks('grunt-concurrent')
  grunt.loadNpmTasks('grunt-mocha-test')
  grunt.loadNpmTasks('grunt-contrib-less')
  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-jshint')

  grunt.option('force', true)

  grunt.registerTask('default', ['concurrent'])

  grunt.registerTask('test', ['mochaTest'])
}