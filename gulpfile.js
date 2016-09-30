var gulp = require('gulp');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var pump = require('pump');
var sequence = require('gulp-sequence');
var cssmin = require('gulp-cssmin');
var rename = require('gulp-rename');

gulp.task('conjs', function() {
  return gulp.src('./*.js')
    .pipe(concat('all.js'))
    .pipe(gulp.dest('./dist/'));
});
gulp.task('uglyjs', function (cb) {
  pump([
        gulp.src('./dist/*.js'),
        uglify(),
        rename({suffix: '.min'}),
        gulp.dest('dist')
    ],
    cb
  );
});

gulp.task('js', sequence('conjs', 'uglyjs'));

gulp.task('concss', function() {
  return gulp.src('./*.css')
    .pipe(concat('all.css'))
    .pipe(gulp.dest('./dist/'));
});

gulp.task('mincss', function () {
    gulp.src('./dist/*.css')
        .pipe(cssmin())
        .pipe(rename({suffix: '.min'}))
        .pipe(gulp.dest('dist'));
});

gulp.task('css', sequence('concss', 'mincss'));

gulp.task('default', ['js', 'css']);


