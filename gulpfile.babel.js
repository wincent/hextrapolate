import WebpackDevServer from 'webpack-dev-server';
import config from './webpack.config.js';
import gulp from 'gulp';
import gutil from 'gulp-util';
import webpack from 'webpack';

gulp.task('default', ['webpack-dev-server']);

gulp.task('build', ['webpack:build']);

gulp.task('webpack:build', callback => {
  const myConfig = {
    ...config,
    plugins: config.plugins.concat(
      new webpack.DefinePlugin({
        'process.env': {
          NODE_ENV: JSON.stringify('production'),
        },
      }),
      new webpack.optimize.DedupePlugin(),
      new webpack.optimize.UglifyJsPlugin()
    ),
  };

  webpack(myConfig, (err, stats) => {
    if (err) {
      throw new gutil.PluginError('webpack:build', err);
    }
    gutil.log('[webpack:build]', stats.toString({
      colors: true
    }));
    callback();
  });
});

gulp.task('webpack-dev-server', callback => {
  var myConfig = {
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
  }).listen(8080, 'localhost', err => {
    if (err) {
      throw new gutil.PluginError('webpack-dev-server', err);
    }
    gutil.log('[webpack-dev-server]', 'http://localhost:3000');
  });
});
