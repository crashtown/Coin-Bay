desc "This task is called by the Heroku scheduler add-on"
task :update_btc => :environment do
  puts "Updating btc price..."
  ItemsController.new.current_btc_price
  puts "done."
end
