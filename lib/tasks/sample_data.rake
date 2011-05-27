namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:username => "admin",
                 :email => "admin@shitter.com",
                 :password => "shitter!admin",
                 :password_confirmation => "shitter!admin")
    User.create!(:username => "Dominick Reinhold",
                 :email => "d.reinhold@yahoo.com",
                 :password => "XCStar2013",
                 :password_confirmation => "XCStar2013")             
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "sample-#{n+1}@shitter.com"
      password  = "password"
      User.create!(:username => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end
  end
end
