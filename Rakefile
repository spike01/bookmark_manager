require 'data_mapper'
require './app/data_mapper_setup'

task :auto_upgrade do
  DataMapper.auto_upgrade!
  puts "Autoupgrade complete (no data loss)"
end

task :auto_migrate do
  DataMapper.auto_migrate!
  puts "Automigrate complete (data could have been lost)"
end