# -*- coding: utf-8 -*-
namespace :db do
  desc 'db:drop db:create db:migrate db:seed'
  task :setup_sample => :environment do
    ['db:drop', 'db:create', 'db:migrate', 'db:seed'].each do |t|
      Rake::Task[t].execute
    end
  end
end
