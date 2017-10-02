const webpack = require('webpack');

module.exports = {
  devtool: "eval-source-map",
  plugins: [
    new webpack.SourceMapDevToolPlugin({
      filename: "[name].map",
      exclude: /node_modules/,
    }),
  ],
};

