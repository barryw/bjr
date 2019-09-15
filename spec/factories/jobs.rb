FactoryBot.define do
  factory :job1, class: Job do
    name { 'job1' }
    cron { '0 * * * *' }
    command { 'ls -l' }
  end

  factory :job2, class: Job do
    name { 'job2' }
    cron { '*/5 * * * *' }
    command { 'ps ax' }
  end
end
