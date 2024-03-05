require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, 'log/cron.log'



env :PATH, ENV['PATH']
job_type :runner, "cd :path && rbenv exec bundle exec rails runner -e :environment ':task' :output"

# every 1.minute do
#   runner "Lens.send_test_notification"
# end



# every 1.day, at: '9:00 am' do
#   runner "Lens.check_and_notify"
# end


