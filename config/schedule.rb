# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
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
#set :output, 'log/cron.log'
set :output, 'log/cron.log'
set :environment, :development
every 30.minute, roles: [:whenever] do
  runner "BatchUpdate.updater"
end

every 15.minute, roles: [:whenever] do
	runner "BatchUpdate.summary"
end
every 15.minute, roles: [:whenever] do
	runner "BatchUpdate.news"
end

every 1.day, roles: [:whenever] do
  runner "BatchUpdate.blog_count"
end