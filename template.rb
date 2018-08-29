def source_paths
  [File.expand_path('template', File.dirname(__FILE__))]
end

%w[
  gems
  initializers
  application
  environments
  append
  runtime
].each do |lib|
  eval(File.read(File.expand_path("lib/#{lib}.rb", File.dirname(__FILE__))))
end

after_bundle do
  %w[
    bundler
    locale_kit
    canonical_rails
    ridgepole
    rspec
    rubocop
    helper
    slim
    javascript
    scss
  ].each do |lib|
    eval(File.read(File.expand_path("lib/bundled/#{lib}.rb", File.dirname(__FILE__))))
  end

  run './bin/spring stop'
end
