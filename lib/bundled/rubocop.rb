copy_file '.rubocop.yml'
run 'bundle binstub rubocop'
run './bin/rubocop -a'
