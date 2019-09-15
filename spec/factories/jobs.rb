FactoryBot.define do
  factory :job1, class: Job do
    name { 'job' }
    cron { '0 * * * *' }
    command { 'ls -l' }
  end
end
