require 'data_mapper'
require './app/app.rb'

namespace :db do
  desc 'Non Destructive Upgrade'
  task :auto_upgrade do
    DataMapper.auto_upgrade!
    puts "Auto-upgrade complete (No Data Loss)"
  end

  desc 'Destructive Upgrade'
  task :auto_migrate do
    DataMapper.auto_migrate!
    puts "Auto-migrate complete (Data was Lost)"
  end

end
