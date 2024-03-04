require File.expand_path(File.dirname(__FILE__) + "/environment")
set :output, 'log/cron.log'


every 1.day, at: '9:00 am' do
  runner "ContactLensNotificationJob.perform_now"
end


