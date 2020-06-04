# JobStat

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Runs** | **int32** | The number of job runs in the period. | [optional] 
**Failed** | **int32** | The number of job runs that failed in the period. | [optional] 
**JobCount** | **int32** | The number of jobs that executed in the period. | [optional] 
**AvgRuntime** | **float32** | The average runtime in seconds of all jobs in the period. | [optional] 
**MaxRuntime** | **float32** | The max runtime in seconds of all jobs in the period. | [optional] 
**MinRuntime** | **float32** | The min runtime in seconds of all jobs in the period. | [optional] 
**TotalJobs** | **int32** | The total number of jobs. | [optional] 
**TotalEnabled** | **int32** | Of the total number of jobs, this is how many were enabled. | [optional] 
**AvgJobLag** | **float32** | The average job lag in seconds. | [optional] 
**MaxJobLag** | **int32** | The maximum job lag in seconds. | [optional] 
**MinJobLag** | **int32** | The minimum job lag in seconds. | [optional] 
**Period** | **string** | The runtime period. | [optional] 
**StartDt** | [**time.Time**](time.Time.md) | The period start date. | [optional] 
**EndDt** | [**time.Time**](time.Time.md) | The period end date. | [optional] 
**CreatedAt** | [**time.Time**](time.Time.md) | The date the record was created. | [optional] 
**UpdatedAt** | [**time.Time**](time.Time.md) | The date the record was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


