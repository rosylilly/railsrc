'use strict';

const path = require('path');
const merge = require('deepmerge');
const webpack = require('webpack');

let env = process.env.RAILS_ENV || process.env.NODE_ENV || "development";

let application = {
  context: path.resolve(__dirname, "app/frontends"),
  entry: {
    "application.js": "./application.js",
  },
  output: {
    path: path.resolve(__dirname, "app/assets/javascripts"),
    filename: "[name]"
  },
  plugins: [
    new webpack.DefinePlugin({
      'ENV': `"${env}"`,
      'process.env': {
        NODE_ENV: `"${env}"`
      },
    }),
  ],
  module: {
    rules: [
      {
        loader: "babel-loader",
        exclude: /node_modules/,
        test: /\.jsx?$/,
      },
    ],
  },
};

let environment = require(`./config/webpack/${env}.js`);

let config = merge(
  application,
  environment,
  {
    arrayMerge: (dest, src) => {
      return dest.concat(src);
    },
  }
);

module.exports = config;
