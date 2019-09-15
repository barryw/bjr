require 'rufus-scheduler'

s = Rufus::Scheduler.singleton
s.every '1m' do
  JobFinderJob.perform_later
end
