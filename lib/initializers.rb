initializer 'i18n.rb', <<-CODE
Rails.application.config.tap do |config|
  config.i18n.available_locales = %i[ja en]
  config.i18n.fallbacks = %i[ja en]
  config.i18n.default_locale = :ja
end
CODE

initializer 'meta_tags.rb', <<-CODE
MetaTags.configure do |config|
  config.title_limit = 70
  config.description_limit = 160
  config.keywords_limit = 255
  config.keywords_separator = ', '
end
CODE

initializer 'premailer.rb', <<-CODE
Premailer::Rails.config = Premailer::Rails.config.merge(
  line_length: 65,
  remove_ids: false,
  remove_classes: Rails.env.development?,
  remove_comments: Rails.env.development?,
  preserve_styles: Rails.env.development?,
  adapter: :nokogiri
)
CODE

initializer 'webpack.rb', <<-'CODE'
# frozen_string_literal: true

javascripts_dir = Rails.root.join(*%w[app assets javascripts]).to_s
Rails.application.config.assets.precompile << %r{#{Regexp.escape(javascripts_dir)}/[^_].*\.js(\.map)?$}
CODE
