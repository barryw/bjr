# frozen_string_literal: true

FactoryBot.define do
  factory :job1, class: Job do
    name { 'job1' }
    cron { '0 * * * *' }
    command { 'ls -l' }
    timezone { 'UTC' }
    enabled { true }
    last_run { DateTime.now }
  end

  factory :job2, class: Job do
    name { 'job2' }
    cron { '*/5 * * * *' }
    command { 'ps ax' }
    timezone { 'UTC' }
    enabled { false }
    last_run { DateTime.now }
  end
end
