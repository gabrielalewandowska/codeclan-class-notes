config = {
  entry: `${__dirname}/client/src/app.js`,
  output: {
    filename: "bundle.js",
    path: `${__dirname}/client/build`
  },
  resolve: {
    extensions: [".js", ".jsx"]
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ["react"]
        }
      }
    ]
  }
}

module.exports = config;
