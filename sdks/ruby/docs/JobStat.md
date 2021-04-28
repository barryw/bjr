# BJR::JobStat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runs** | **Integer** | The number of job runs in the period. | [optional] |
| **failed** | **Integer** | The number of job runs that failed in the period. | [optional] |
| **job_count** | **Integer** | The number of jobs that executed in the period. | [optional] |
| **avg_runtime** | **Float** | The average runtime in seconds of all jobs in the period. | [optional] |
| **max_runtime** | **Float** | The max runtime in seconds of all jobs in the period. | [optional] |
| **min_runtime** | **Float** | The min runtime in seconds of all jobs in the period. | [optional] |
| **total_jobs** | **Integer** | The total number of jobs. | [optional] |
| **total_enabled** | **Integer** | Of the total number of jobs, this is how many were enabled. | [optional] |
| **avg_job_lag** | **Float** | The average job lag in seconds. | [optional] |
| **max_job_lag** | **Integer** | The maximum job lag in seconds. | [optional] |
| **min_job_lag** | **Integer** | The minimum job lag in seconds. | [optional] |
| **period** | **String** | The runtime period. | [optional] |
| **start_dt** | **Time** | The period start date. | [optional] |
| **end_dt** | **Time** | The period end date. | [optional] |
| **created_at** | **Time** | The date the record was created. | [optional] |
| **updated_at** | **Time** | The date the record was last updated. | [optional] |

## Example

```ruby
require 'bjr4r'

instance = BJR::JobStat.new(
  runs: null,
  failed: null,
  job_count: null,
  avg_runtime: null,
  max_runtime: null,
  min_runtime: null,
  total_jobs: null,
  total_enabled: null,
  avg_job_lag: null,
  max_job_lag: null,
  min_job_lag: null,
  period: null,
  start_dt: null,
  end_dt: null,
  created_at: null,
  updated_at: null
)
```

