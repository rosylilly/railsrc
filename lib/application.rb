application <<-'CODE'
config.generators do |generator|
  generator.helper false
  generator.javascripts false
  generator.stylesheets false
  generator.template_engine :slim
end

# For resolve problem of puma on error page
def inspect
  "#<#{self.class}>"
end
CODE

