# TodaysStats

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalJobs** | Pointer to **int32** | The total number of jobs that are scheduled. | [optional] 
**TotalJobsTrend** | Pointer to **float32** | The trend direction of total_jobs. | [optional] 
**EnabledJobs** | Pointer to **int32** | The total number of jobs that are enabled. This will be a subset of total_jobs. | [optional] 
**EnabledJobsTrend** | Pointer to **float32** | The trend direction of enabled_jobs. | [optional] 
**RunJobs** | Pointer to **int32** | The number of jobs that have been run today. | [optional] 
**RunJobsTrend** | Pointer to **float32** | The trend direction of run_jobs. | [optional] 
**FailedJobs** | Pointer to **int32** | The number of jobs that have failed today. | [optional] 
**FailedJobsTrend** | Pointer to **float32** | The trend direction of failed_jobs. | [optional] 
**AvgJobRuntime** | Pointer to **float32** | The average job run time. | [optional] 
**AvgJobRuntimeTrend** | Pointer to **float32** | The trend direction of avg_job_runtime. | [optional] 
**MaxJobRuntime** | Pointer to **float32** | The max job run time. | [optional] 
**MaxJobRuntimeTrend** | Pointer to **float32** | The trend direction of max_job_runtime. | [optional] 
**MinJobRuntime** | Pointer to **float32** | The min job run time. | [optional] 
**MinJobRuntimeTrend** | Pointer to **float32** | The trend direction of min_job_runtime. | [optional] 
**AvgJobLag** | Pointer to **float32** | The average job lag. | [optional] 
**AvgJobLagTrend** | Pointer to **float32** | The trend direction of avg_job_lag. | [optional] 
**MaxJobLag** | Pointer to **float32** | The max job lag. | [optional] 
**MaxJobLagTrend** | Pointer to **float32** | The trend direction of max_job_lag. | [optional] 
**MinJobLag** | Pointer to **float32** | The min job lag. | [optional] 
**MinJobLagTrend** | Pointer to **float32** | The trend direction of min_job_lag. | [optional] 

## Methods

### NewTodaysStats

`func NewTodaysStats() *TodaysStats`

NewTodaysStats instantiates a new TodaysStats object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTodaysStatsWithDefaults

`func NewTodaysStatsWithDefaults() *TodaysStats`

NewTodaysStatsWithDefaults instantiates a new TodaysStats object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalJobs

`func (o *TodaysStats) GetTotalJobs() int32`

GetTotalJobs returns the TotalJobs field if non-nil, zero value otherwise.

### GetTotalJobsOk

`func (o *TodaysStats) GetTotalJobsOk() (*int32, bool)`

GetTotalJobsOk returns a tuple with the TotalJobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalJobs

`func (o *TodaysStats) SetTotalJobs(v int32)`

SetTotalJobs sets TotalJobs field to given value.

### HasTotalJobs

`func (o *TodaysStats) HasTotalJobs() bool`

HasTotalJobs returns a boolean if a field has been set.

### GetTotalJobsTrend

`func (o *TodaysStats) GetTotalJobsTrend() float32`

GetTotalJobsTrend returns the TotalJobsTrend field if non-nil, zero value otherwise.

### GetTotalJobsTrendOk

`func (o *TodaysStats) GetTotalJobsTrendOk() (*float32, bool)`

GetTotalJobsTrendOk returns a tuple with the TotalJobsTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalJobsTrend

`func (o *TodaysStats) SetTotalJobsTrend(v float32)`

SetTotalJobsTrend sets TotalJobsTrend field to given value.

### HasTotalJobsTrend

`func (o *TodaysStats) HasTotalJobsTrend() bool`

HasTotalJobsTrend returns a boolean if a field has been set.

### GetEnabledJobs

`func (o *TodaysStats) GetEnabledJobs() int32`

GetEnabledJobs returns the EnabledJobs field if non-nil, zero value otherwise.

### GetEnabledJobsOk

`func (o *TodaysStats) GetEnabledJobsOk() (*int32, bool)`

GetEnabledJobsOk returns a tuple with the EnabledJobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabledJobs

`func (o *TodaysStats) SetEnabledJobs(v int32)`

SetEnabledJobs sets EnabledJobs field to given value.

### HasEnabledJobs

`func (o *TodaysStats) HasEnabledJobs() bool`

HasEnabledJobs returns a boolean if a field has been set.

### GetEnabledJobsTrend

`func (o *TodaysStats) GetEnabledJobsTrend() float32`

GetEnabledJobsTrend returns the EnabledJobsTrend field if non-nil, zero value otherwise.

### GetEnabledJobsTrendOk

`func (o *TodaysStats) GetEnabledJobsTrendOk() (*float32, bool)`

GetEnabledJobsTrendOk returns a tuple with the EnabledJobsTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabledJobsTrend

`func (o *TodaysStats) SetEnabledJobsTrend(v float32)`

SetEnabledJobsTrend sets EnabledJobsTrend field to given value.

### HasEnabledJobsTrend

`func (o *TodaysStats) HasEnabledJobsTrend() bool`

HasEnabledJobsTrend returns a boolean if a field has been set.

### GetRunJobs

`func (o *TodaysStats) GetRunJobs() int32`

GetRunJobs returns the RunJobs field if non-nil, zero value otherwise.

### GetRunJobsOk

`func (o *TodaysStats) GetRunJobsOk() (*int32, bool)`

GetRunJobsOk returns a tuple with the RunJobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunJobs

`func (o *TodaysStats) SetRunJobs(v int32)`

SetRunJobs sets RunJobs field to given value.

### HasRunJobs

`func (o *TodaysStats) HasRunJobs() bool`

HasRunJobs returns a boolean if a field has been set.

### GetRunJobsTrend

`func (o *TodaysStats) GetRunJobsTrend() float32`

GetRunJobsTrend returns the RunJobsTrend field if non-nil, zero value otherwise.

### GetRunJobsTrendOk

`func (o *TodaysStats) GetRunJobsTrendOk() (*float32, bool)`

GetRunJobsTrendOk returns a tuple with the RunJobsTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunJobsTrend

`func (o *TodaysStats) SetRunJobsTrend(v float32)`

SetRunJobsTrend sets RunJobsTrend field to given value.

### HasRunJobsTrend

`func (o *TodaysStats) HasRunJobsTrend() bool`

HasRunJobsTrend returns a boolean if a field has been set.

### GetFailedJobs

`func (o *TodaysStats) GetFailedJobs() int32`

GetFailedJobs returns the FailedJobs field if non-nil, zero value otherwise.

### GetFailedJobsOk

`func (o *TodaysStats) GetFailedJobsOk() (*int32, bool)`

GetFailedJobsOk returns a tuple with the FailedJobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailedJobs

`func (o *TodaysStats) SetFailedJobs(v int32)`

SetFailedJobs sets FailedJobs field to given value.

### HasFailedJobs

`func (o *TodaysStats) HasFailedJobs() bool`

HasFailedJobs returns a boolean if a field has been set.

### GetFailedJobsTrend

`func (o *TodaysStats) GetFailedJobsTrend() float32`

GetFailedJobsTrend returns the FailedJobsTrend field if non-nil, zero value otherwise.

### GetFailedJobsTrendOk

`func (o *TodaysStats) GetFailedJobsTrendOk() (*float32, bool)`

GetFailedJobsTrendOk returns a tuple with the FailedJobsTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailedJobsTrend

`func (o *TodaysStats) SetFailedJobsTrend(v float32)`

SetFailedJobsTrend sets FailedJobsTrend field to given value.

### HasFailedJobsTrend

`func (o *TodaysStats) HasFailedJobsTrend() bool`

HasFailedJobsTrend returns a boolean if a field has been set.

### GetAvgJobRuntime

`func (o *TodaysStats) GetAvgJobRuntime() float32`

GetAvgJobRuntime returns the AvgJobRuntime field if non-nil, zero value otherwise.

### GetAvgJobRuntimeOk

`func (o *TodaysStats) GetAvgJobRuntimeOk() (*float32, bool)`

GetAvgJobRuntimeOk returns a tuple with the AvgJobRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgJobRuntime

`func (o *TodaysStats) SetAvgJobRuntime(v float32)`

SetAvgJobRuntime sets AvgJobRuntime field to given value.

### HasAvgJobRuntime

`func (o *TodaysStats) HasAvgJobRuntime() bool`

HasAvgJobRuntime returns a boolean if a field has been set.

### GetAvgJobRuntimeTrend

`func (o *TodaysStats) GetAvgJobRuntimeTrend() float32`

GetAvgJobRuntimeTrend returns the AvgJobRuntimeTrend field if non-nil, zero value otherwise.

### GetAvgJobRuntimeTrendOk

`func (o *TodaysStats) GetAvgJobRuntimeTrendOk() (*float32, bool)`

GetAvgJobRuntimeTrendOk returns a tuple with the AvgJobRuntimeTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgJobRuntimeTrend

`func (o *TodaysStats) SetAvgJobRuntimeTrend(v float32)`

SetAvgJobRuntimeTrend sets AvgJobRuntimeTrend field to given value.

### HasAvgJobRuntimeTrend

`func (o *TodaysStats) HasAvgJobRuntimeTrend() bool`

HasAvgJobRuntimeTrend returns a boolean if a field has been set.

### GetMaxJobRuntime

`func (o *TodaysStats) GetMaxJobRuntime() float32`

GetMaxJobRuntime returns the MaxJobRuntime field if non-nil, zero value otherwise.

### GetMaxJobRuntimeOk

`func (o *TodaysStats) GetMaxJobRuntimeOk() (*float32, bool)`

GetMaxJobRuntimeOk returns a tuple with the MaxJobRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxJobRuntime

`func (o *TodaysStats) SetMaxJobRuntime(v float32)`

SetMaxJobRuntime sets MaxJobRuntime field to given value.

### HasMaxJobRuntime

`func (o *TodaysStats) HasMaxJobRuntime() bool`

HasMaxJobRuntime returns a boolean if a field has been set.

### GetMaxJobRuntimeTrend

`func (o *TodaysStats) GetMaxJobRuntimeTrend() float32`

GetMaxJobRuntimeTrend returns the MaxJobRuntimeTrend field if non-nil, zero value otherwise.

### GetMaxJobRuntimeTrendOk

`func (o *TodaysStats) GetMaxJobRuntimeTrendOk() (*float32, bool)`

GetMaxJobRuntimeTrendOk returns a tuple with the MaxJobRuntimeTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxJobRuntimeTrend

`func (o *TodaysStats) SetMaxJobRuntimeTrend(v float32)`

SetMaxJobRuntimeTrend sets MaxJobRuntimeTrend field to given value.

### HasMaxJobRuntimeTrend

`func (o *TodaysStats) HasMaxJobRuntimeTrend() bool`

HasMaxJobRuntimeTrend returns a boolean if a field has been set.

### GetMinJobRuntime

`func (o *TodaysStats) GetMinJobRuntime() float32`

GetMinJobRuntime returns the MinJobRuntime field if non-nil, zero value otherwise.

### GetMinJobRuntimeOk

`func (o *TodaysStats) GetMinJobRuntimeOk() (*float32, bool)`

GetMinJobRuntimeOk returns a tuple with the MinJobRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinJobRuntime

`func (o *TodaysStats) SetMinJobRuntime(v float32)`

SetMinJobRuntime sets MinJobRuntime field to given value.

### HasMinJobRuntime

`func (o *TodaysStats) HasMinJobRuntime() bool`

HasMinJobRuntime returns a boolean if a field has been set.

### GetMinJobRuntimeTrend

`func (o *TodaysStats) GetMinJobRuntimeTrend() float32`

GetMinJobRuntimeTrend returns the MinJobRuntimeTrend field if non-nil, zero value otherwise.

### GetMinJobRuntimeTrendOk

`func (o *TodaysStats) GetMinJobRuntimeTrendOk() (*float32, bool)`

GetMinJobRuntimeTrendOk returns a tuple with the MinJobRuntimeTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinJobRuntimeTrend

`func (o *TodaysStats) SetMinJobRuntimeTrend(v float32)`

SetMinJobRuntimeTrend sets MinJobRuntimeTrend field to given value.

### HasMinJobRuntimeTrend

`func (o *TodaysStats) HasMinJobRuntimeTrend() bool`

HasMinJobRuntimeTrend returns a boolean if a field has been set.

### GetAvgJobLag

`func (o *TodaysStats) GetAvgJobLag() float32`

GetAvgJobLag returns the AvgJobLag field if non-nil, zero value otherwise.

### GetAvgJobLagOk

`func (o *TodaysStats) GetAvgJobLagOk() (*float32, bool)`

GetAvgJobLagOk returns a tuple with the AvgJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgJobLag

`func (o *TodaysStats) SetAvgJobLag(v float32)`

SetAvgJobLag sets AvgJobLag field to given value.

### HasAvgJobLag

`func (o *TodaysStats) HasAvgJobLag() bool`

HasAvgJobLag returns a boolean if a field has been set.

### GetAvgJobLagTrend

`func (o *TodaysStats) GetAvgJobLagTrend() float32`

GetAvgJobLagTrend returns the AvgJobLagTrend field if non-nil, zero value otherwise.

### GetAvgJobLagTrendOk

`func (o *TodaysStats) GetAvgJobLagTrendOk() (*float32, bool)`

GetAvgJobLagTrendOk returns a tuple with the AvgJobLagTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgJobLagTrend

`func (o *TodaysStats) SetAvgJobLagTrend(v float32)`

SetAvgJobLagTrend sets AvgJobLagTrend field to given value.

### HasAvgJobLagTrend

`func (o *TodaysStats) HasAvgJobLagTrend() bool`

HasAvgJobLagTrend returns a boolean if a field has been set.

### GetMaxJobLag

`func (o *TodaysStats) GetMaxJobLag() float32`

GetMaxJobLag returns the MaxJobLag field if non-nil, zero value otherwise.

### GetMaxJobLagOk

`func (o *TodaysStats) GetMaxJobLagOk() (*float32, bool)`

GetMaxJobLagOk returns a tuple with the MaxJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxJobLag

`func (o *TodaysStats) SetMaxJobLag(v float32)`

SetMaxJobLag sets MaxJobLag field to given value.

### HasMaxJobLag

`func (o *TodaysStats) HasMaxJobLag() bool`

HasMaxJobLag returns a boolean if a field has been set.

### GetMaxJobLagTrend

`func (o *TodaysStats) GetMaxJobLagTrend() float32`

GetMaxJobLagTrend returns the MaxJobLagTrend field if non-nil, zero value otherwise.

### GetMaxJobLagTrendOk

`func (o *TodaysStats) GetMaxJobLagTrendOk() (*float32, bool)`

GetMaxJobLagTrendOk returns a tuple with the MaxJobLagTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxJobLagTrend

`func (o *TodaysStats) SetMaxJobLagTrend(v float32)`

SetMaxJobLagTrend sets MaxJobLagTrend field to given value.

### HasMaxJobLagTrend

`func (o *TodaysStats) HasMaxJobLagTrend() bool`

HasMaxJobLagTrend returns a boolean if a field has been set.

### GetMinJobLag

`func (o *TodaysStats) GetMinJobLag() float32`

GetMinJobLag returns the MinJobLag field if non-nil, zero value otherwise.

### GetMinJobLagOk

`func (o *TodaysStats) GetMinJobLagOk() (*float32, bool)`

GetMinJobLagOk returns a tuple with the MinJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinJobLag

`func (o *TodaysStats) SetMinJobLag(v float32)`

SetMinJobLag sets MinJobLag field to given value.

### HasMinJobLag

`func (o *TodaysStats) HasMinJobLag() bool`

HasMinJobLag returns a boolean if a field has been set.

### GetMinJobLagTrend

`func (o *TodaysStats) GetMinJobLagTrend() float32`

GetMinJobLagTrend returns the MinJobLagTrend field if non-nil, zero value otherwise.

### GetMinJobLagTrendOk

`func (o *TodaysStats) GetMinJobLagTrendOk() (*float32, bool)`

GetMinJobLagTrendOk returns a tuple with the MinJobLagTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinJobLagTrend

`func (o *TodaysStats) SetMinJobLagTrend(v float32)`

SetMinJobLagTrend sets MinJobLagTrend field to given value.

### HasMinJobLagTrend

`func (o *TodaysStats) HasMinJobLagTrend() bool`

HasMinJobLagTrend returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


