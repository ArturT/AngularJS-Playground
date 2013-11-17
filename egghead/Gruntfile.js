module.exports = function (grunt) {
  grunt.initConfig({
    person: {
      firstName: 'Frank'
    }
  });

  // this overrides above config
  grunt.initConfig(grunt.file.readJSON('config.json'));

  // run in terminal:
  // $ grunt default:John
  grunt.registerTask('default', function (name) {
    grunt.log.writeln('Hello ' + name);
    grunt.log.writeln('Hello ' + grunt.config.get('person').firstName);
    grunt.log.writeln('Hello ' + grunt.config.get('person').lastName);
  });
};
