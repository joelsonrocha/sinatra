
# If you're using bundler, you will need to add these 2 lines
require 'bundler'
Bundler.setup

require 'sinatra'

require 'dm-core'
require 'dm-mysql-adapter'
require 'dm-migrations'
require 'dm-validations'

DataMapper.setup(:default, 'mysql://localhost/the_database_name')

DataMapper.auto_migrate!

# Create the models
Dir["#{File.dirname(__FILE__)}/models/*.rb"].each { |file| require "#{file}" }
