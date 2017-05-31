require 'capybara'
require 'capybara/rspec'
require './app/models/link'
require './app.rb'
require 'database_cleaner'
require 'dm-transactions'

ENV['RACK_ENV'] = 'test'

Capybara.app = DatabaseApp

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
