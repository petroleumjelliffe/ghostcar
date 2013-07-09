# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :environment, "development"
set :output, "/var/log/cron.log"

#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever



# real time checkins run once a minute
every 1.minute do
	rake "ghostcar:repost_checkins", :environment => 'development'
	
end

#ingest new checkins once a day
every 1.day do
	rake "ghostcar:ingest_all", :environment => 'development'
	
end
