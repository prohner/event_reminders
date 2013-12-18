namespace :db do
  desc "Create sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    p = Person.create!(:first_name => "Preston", :last_name => "Rohner")
    
  end
end