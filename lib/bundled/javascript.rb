run 'rm app/assets/javascripts/application.js'
run 'touch app/assets/javascripts/.keep'
template 'package.json', force: true
template '.babelrc'
template 'webpack.config.js'
template 'config/webpack/production.js'
template 'config/webpack/development.js'
template 'config/webpack/test.js'
template 'app/frontends/application.js'
