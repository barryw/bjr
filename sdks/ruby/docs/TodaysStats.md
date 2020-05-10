# BJR::TodaysStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_jobs** | **Integer** | The total number of jobs that are scheduled. | [optional] 
**total_jobs_trend** | **Float** | The trend direction of total_jobs. | [optional] 
**enabled_jobs** | **Integer** | The total number of jobs that are enabled. This will be a subset of total_jobs. | [optional] 
**enabled_jobs_trend** | **Float** | The trend direction of enabled_jobs. | [optional] 
**run_jobs** | **Integer** | The number of jobs that have been run today. | [optional] 
**run_jobs_trend** | **Float** | The trend direction of run_jobs. | [optional] 
**failed_jobs** | **Integer** | The number of jobs that have failed today. | [optional] 
**failed_jobs_trend** | **Float** | The trend direction of failed_jobs. | [optional] 
**avg_job_runtime** | **Float** | The average job run time. | [optional] 
**avg_job_runtime_trend** | **Float** | The trend direction of avg_job_runtime. | [optional] 
**max_job_runtime** | **Float** | The max job run time. | [optional] 
**max_job_runtime_trend** | **Float** | The trend direction of max_job_runtime. | [optional] 
**min_job_runtime** | **Float** | The min job run time. | [optional] 
**min_job_runtime_trend** | **Float** | The trend direction of min_job_runtime. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::TodaysStats.new(total_jobs: null,
                                 total_jobs_trend: null,
                                 enabled_jobs: null,
                                 enabled_jobs_trend: null,
                                 run_jobs: null,
                                 run_jobs_trend: null,
                                 failed_jobs: null,
                                 failed_jobs_trend: null,
                                 avg_job_runtime: null,
                                 avg_job_runtime_trend: null,
                                 max_job_runtime: null,
                                 max_job_runtime_trend: null,
                                 min_job_runtime: null,
                                 min_job_runtime_trend: null)
```


