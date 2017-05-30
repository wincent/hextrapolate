// Copyright 2003-present Greg Hurrell. All rights reserved.
// Licensed under the terms of the MIT license.

import WebpackDevServer from 'webpack-dev-server';
import config from './webpack.config.js';
import eslint from 'gulp-eslint';
import flow from 'gulp-flowtype';
import gulp from 'gulp';
import gutil from 'gulp-util';
import mocha from 'gulp-mocha';
import productionConfig from './webpack.production.config.js';
import webpack from 'webpack';

let watching = false;

/**
 * Ring the terminal bell.
 */
function ringBell() {
  process.stderr.write('\x07');
}

/**
 * Wrap a stream in an error-handler (until Gulp 4, needed to prevent "watch"
 * task from dying on error).
 */
function wrap(stream) {
  stream.on('error', error => {
    gutil.log(gutil.colors.red(error.message));
    gutil.log(error.stack);
    if (watching) {
      gutil.log(gutil.colors.yellow('[aborting]'));
      stream.end();
    } else {
      gutil.log(gutil.colors.yellow('[exiting]'));
      process.exit(1);
    }
    ringBell();
  });
  return stream;
}

gulp.task('default', ['webpack-dev-server']);

gulp.task('build', ['webpack:build']);

gulp.task('flow', ['typecheck']);

gulp.task('lint', () => (
  gulp.src('src/**/*.js')
    .pipe(eslint())
    .pipe(eslint.format())
));

gulp.task('typecheck', () => {
  return gulp.src('src/**/*.js', {read: false})
    .pipe(gutil.noop());

  // TODO: enable this once Flow groks ES2015/ES2016 features.
  return gulp.src('src/**/*.js')
    .pipe(wrap(flow()))
});

gulp.task('test', () => (
  gulp.src(
    [
      'src/**/__mocks__/*.js',
      'src/**/__tests__/*-test.js',
    ],
    {read: false}
  )
    .pipe(wrap(mocha({
      opts: 'mocha/mocha.opts',
      reporter: watching ? 'mocha/watch-reporter' : 'list',
    })))
));

gulp.task('watch', () => {
  watching = true;
  gulp.watch('src/**/*.{css,js}', ['build', 'lint', 'test', 'typecheck']);
});

gulp.task('webpack:build', callback => {
  webpack(productionConfig, (err, stats) => {
    if (err) {
      ringBell();
      throw new gutil.PluginError('webpack:build', err);
    }
    if (stats.compilation.errors) {
      ringBell();
    }
    if (!watching) {
      gutil.log('[webpack:build]', stats.toString({
        colors: true
      }));
    }
    callback();
  });
});

gulp.task('webpack-dev-server', callback => {
  const myConfig = {
    ...config,
    debug: true,
  };

  new WebpackDevServer(webpack(myConfig), {
    publicPath: config.output.publicPath,
    hot: true,
    historyApiFallback: true,
    stats: {
      colors: true,
    },
  }).listen(3000, 'localhost', err => {
    if (err) {
      ringBell();
      throw new gutil.PluginError('webpack-dev-server', err);
    }
    gutil.log('[webpack-dev-server]', 'http://localhost:3000');
  });
});
