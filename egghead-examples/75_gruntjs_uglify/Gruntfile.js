module.exports = function(grunt) {
  grunt.initConfig({
    watch: {
      files: ['journal.txt'],
      tasks: ['pat']
    },
    uglify: {
      dist: {
        files: {
          "dist/app.min.js": "app/**/*.js"
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-uglify');

  grunt.registerTask('pat', function() {
    grunt.log.writeln('Keep going, you are great!');
  });
};
