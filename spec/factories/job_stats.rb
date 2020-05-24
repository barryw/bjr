FactoryBot.define do
  factory :minutely_stat1, class: JobStat do
    runs { 2 }
    failed { 1 }
    avg_runtime { 3 }
    min_runtime { 1 }
    max_runtime { 10 }
    total_jobs { 100 }
    total_enabled { 90 }
    avg_job_lag { 1 }
    max_job_lag { 2 }
    min_job_lag { 0 }
    period { :minute }
  end

  factory :minutely_stat2, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    total_jobs { 100 }
    total_enabled { 90 }
    avg_job_lag { 1 }
    max_job_lag { 2 }
    min_job_lag { 0 }
    period { :minute }
  end

  factory :hourly_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    total_jobs { 100 }
    total_enabled { 90 }
    avg_job_lag { 1 }
    max_job_lag { 2 }
    min_job_lag { 0 }
    period { :hour }
  end

  factory :daily_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    total_jobs { 100 }
    total_enabled { 90 }
    avg_job_lag { 1 }
    max_job_lag { 2 }
    min_job_lag { 0 }
    period { :day }
  end

  factory :weekly_stat1, class: JobStat do
    runs { 20 }
    failed { 10 }
    avg_runtime { 30 }
    min_runtime { 10 }
    max_runtime { 100 }
    total_jobs { 100 }
    total_enabled { 90 }
    avg_job_lag { 1 }
    max_job_lag { 2 }
    min_job_lag { 0 }
    period { :week }
  end
end
