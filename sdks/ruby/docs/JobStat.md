# BJR::JobStat

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runs** | **Integer** | The number of job runs in the period. | [optional] 
**failed** | **Integer** | The number of job runs that failed in the period. | [optional] 
**job_count** | **Integer** | The number of jobs that executed in the period. | [optional] 
**avg_runtime** | [**Decimal**](Decimal.md) | The average runtime in seconds of all jobs in the period. | [optional] 
**max_runtime** | [**Decimal**](Decimal.md) | The max runtime in seconds of all jobs in the period. | [optional] 
**min_runtime** | [**Decimal**](Decimal.md) | The min runtime in seconds of all jobs in the period. | [optional] 
**period** | **String** | The runtime period. | [optional] 
**start_dt** | **DateTime** | The period start date. | [optional] 
**end_dt** | **DateTime** | The period end date. | [optional] 
**created_at** | **DateTime** | The date the record was created. | [optional] 
**updated_at** | **DateTime** | The date the record was last updated. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::JobStat.new(runs: null,
                                 failed: null,
                                 job_count: null,
                                 avg_runtime: null,
                                 max_runtime: null,
                                 min_runtime: null,
                                 period: null,
                                 start_dt: null,
                                 end_dt: null,
                                 created_at: null,
                                 updated_at: null)
```


