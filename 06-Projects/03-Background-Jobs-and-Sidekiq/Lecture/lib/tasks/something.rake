namespace :something do
  desc 'This is a test task'
  task test: :environment do
    puts User.count
  end
end
