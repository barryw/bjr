FactoryBot.define do
  factory :minutely_stat1, class: JobStat do
    runs { 2 }
    failed { 1 }
    avg_runtime { 3 }
    min_runtime { 1 }
    max_runtime { 10 }
    period { :minute }
  end

  factory :minutely_stat2, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    period { :minute }
  end

  factory :hourly_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    period { :hour }
  end

  factory :daily_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    period { :day }
  end

  factory :weekly_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    period { :week }
  end
end
