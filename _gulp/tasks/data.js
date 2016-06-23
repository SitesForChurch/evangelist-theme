var gulp          = require('gulp');
var sequence      = require('run-sequence');

gulp.task('data', function(done) {
  sequence('abouts', 'blog', 'series', 'sermons', done);
});
