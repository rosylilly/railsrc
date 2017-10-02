environment <<-CODE, env: 'development'
config.action_mailer.delivery_method = :letter_opener
config.action_mailer.default_url_options = { host: 'localhost:3000' }
CODE

environment <<-CODE, env: 'test'
config.public_file_server.enabled = false
config.eager_load = false
CODE

