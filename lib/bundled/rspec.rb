copy_file '.rspec'
copy_file 'spec/spec_helper.rb', force: true
copy_file 'spec/rails_helper.rb', force: true
copy_file 'spec/support/factory_bot.rb'
copy_file 'spec/support/database_cleaner.rb'
copy_file 'spec/support/sidekiq.rb'
