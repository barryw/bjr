# JobStat

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Runs** | Pointer to **int32** | The number of job runs in the period. | [optional] 
**Failed** | Pointer to **int32** | The number of job runs that failed in the period. | [optional] 
**JobCount** | Pointer to **int32** | The number of jobs that executed in the period. | [optional] 
**AvgRuntime** | Pointer to **float32** | The average runtime in seconds of all jobs in the period. | [optional] 
**MaxRuntime** | Pointer to **float32** | The max runtime in seconds of all jobs in the period. | [optional] 
**MinRuntime** | Pointer to **float32** | The min runtime in seconds of all jobs in the period. | [optional] 
**TotalJobs** | Pointer to **int32** | The total number of jobs. | [optional] 
**TotalEnabled** | Pointer to **int32** | Of the total number of jobs, this is how many were enabled. | [optional] 
**AvgJobLag** | Pointer to **float32** | The average job lag in seconds. | [optional] 
**MaxJobLag** | Pointer to **int32** | The maximum job lag in seconds. | [optional] 
**MinJobLag** | Pointer to **int32** | The minimum job lag in seconds. | [optional] 
**Period** | Pointer to **string** | The runtime period. | [optional] 
**StartDt** | Pointer to **time.Time** | The period start date. | [optional] 
**EndDt** | Pointer to **time.Time** | The period end date. | [optional] 
**CreatedAt** | Pointer to **time.Time** | The date the record was created. | [optional] 
**UpdatedAt** | Pointer to **time.Time** | The date the record was last updated. | [optional] 

## Methods

### NewJobStat

`func NewJobStat() *JobStat`

NewJobStat instantiates a new JobStat object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewJobStatWithDefaults

`func NewJobStatWithDefaults() *JobStat`

NewJobStatWithDefaults instantiates a new JobStat object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRuns

`func (o *JobStat) GetRuns() int32`

GetRuns returns the Runs field if non-nil, zero value otherwise.

### GetRunsOk

`func (o *JobStat) GetRunsOk() (*int32, bool)`

GetRunsOk returns a tuple with the Runs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRuns

`func (o *JobStat) SetRuns(v int32)`

SetRuns sets Runs field to given value.

### HasRuns

`func (o *JobStat) HasRuns() bool`

HasRuns returns a boolean if a field has been set.

### GetFailed

`func (o *JobStat) GetFailed() int32`

GetFailed returns the Failed field if non-nil, zero value otherwise.

### GetFailedOk

`func (o *JobStat) GetFailedOk() (*int32, bool)`

GetFailedOk returns a tuple with the Failed field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailed

`func (o *JobStat) SetFailed(v int32)`

SetFailed sets Failed field to given value.

### HasFailed

`func (o *JobStat) HasFailed() bool`

HasFailed returns a boolean if a field has been set.

### GetJobCount

`func (o *JobStat) GetJobCount() int32`

GetJobCount returns the JobCount field if non-nil, zero value otherwise.

### GetJobCountOk

`func (o *JobStat) GetJobCountOk() (*int32, bool)`

GetJobCountOk returns a tuple with the JobCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobCount

`func (o *JobStat) SetJobCount(v int32)`

SetJobCount sets JobCount field to given value.

### HasJobCount

`func (o *JobStat) HasJobCount() bool`

HasJobCount returns a boolean if a field has been set.

### GetAvgRuntime

`func (o *JobStat) GetAvgRuntime() float32`

GetAvgRuntime returns the AvgRuntime field if non-nil, zero value otherwise.

### GetAvgRuntimeOk

`func (o *JobStat) GetAvgRuntimeOk() (*float32, bool)`

GetAvgRuntimeOk returns a tuple with the AvgRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgRuntime

`func (o *JobStat) SetAvgRuntime(v float32)`

SetAvgRuntime sets AvgRuntime field to given value.

### HasAvgRuntime

`func (o *JobStat) HasAvgRuntime() bool`

HasAvgRuntime returns a boolean if a field has been set.

### GetMaxRuntime

`func (o *JobStat) GetMaxRuntime() float32`

GetMaxRuntime returns the MaxRuntime field if non-nil, zero value otherwise.

### GetMaxRuntimeOk

`func (o *JobStat) GetMaxRuntimeOk() (*float32, bool)`

GetMaxRuntimeOk returns a tuple with the MaxRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxRuntime

`func (o *JobStat) SetMaxRuntime(v float32)`

SetMaxRuntime sets MaxRuntime field to given value.

### HasMaxRuntime

`func (o *JobStat) HasMaxRuntime() bool`

HasMaxRuntime returns a boolean if a field has been set.

### GetMinRuntime

`func (o *JobStat) GetMinRuntime() float32`

GetMinRuntime returns the MinRuntime field if non-nil, zero value otherwise.

### GetMinRuntimeOk

`func (o *JobStat) GetMinRuntimeOk() (*float32, bool)`

GetMinRuntimeOk returns a tuple with the MinRuntime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinRuntime

`func (o *JobStat) SetMinRuntime(v float32)`

SetMinRuntime sets MinRuntime field to given value.

### HasMinRuntime

`func (o *JobStat) HasMinRuntime() bool`

HasMinRuntime returns a boolean if a field has been set.

### GetTotalJobs

`func (o *JobStat) GetTotalJobs() int32`

GetTotalJobs returns the TotalJobs field if non-nil, zero value otherwise.

### GetTotalJobsOk

`func (o *JobStat) GetTotalJobsOk() (*int32, bool)`

GetTotalJobsOk returns a tuple with the TotalJobs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalJobs

`func (o *JobStat) SetTotalJobs(v int32)`

SetTotalJobs sets TotalJobs field to given value.

### HasTotalJobs

`func (o *JobStat) HasTotalJobs() bool`

HasTotalJobs returns a boolean if a field has been set.

### GetTotalEnabled

`func (o *JobStat) GetTotalEnabled() int32`

GetTotalEnabled returns the TotalEnabled field if non-nil, zero value otherwise.

### GetTotalEnabledOk

`func (o *JobStat) GetTotalEnabledOk() (*int32, bool)`

GetTotalEnabledOk returns a tuple with the TotalEnabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalEnabled

`func (o *JobStat) SetTotalEnabled(v int32)`

SetTotalEnabled sets TotalEnabled field to given value.

### HasTotalEnabled

`func (o *JobStat) HasTotalEnabled() bool`

HasTotalEnabled returns a boolean if a field has been set.

### GetAvgJobLag

`func (o *JobStat) GetAvgJobLag() float32`

GetAvgJobLag returns the AvgJobLag field if non-nil, zero value otherwise.

### GetAvgJobLagOk

`func (o *JobStat) GetAvgJobLagOk() (*float32, bool)`

GetAvgJobLagOk returns a tuple with the AvgJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgJobLag

`func (o *JobStat) SetAvgJobLag(v float32)`

SetAvgJobLag sets AvgJobLag field to given value.

### HasAvgJobLag

`func (o *JobStat) HasAvgJobLag() bool`

HasAvgJobLag returns a boolean if a field has been set.

### GetMaxJobLag

`func (o *JobStat) GetMaxJobLag() int32`

GetMaxJobLag returns the MaxJobLag field if non-nil, zero value otherwise.

### GetMaxJobLagOk

`func (o *JobStat) GetMaxJobLagOk() (*int32, bool)`

GetMaxJobLagOk returns a tuple with the MaxJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxJobLag

`func (o *JobStat) SetMaxJobLag(v int32)`

SetMaxJobLag sets MaxJobLag field to given value.

### HasMaxJobLag

`func (o *JobStat) HasMaxJobLag() bool`

HasMaxJobLag returns a boolean if a field has been set.

### GetMinJobLag

`func (o *JobStat) GetMinJobLag() int32`

GetMinJobLag returns the MinJobLag field if non-nil, zero value otherwise.

### GetMinJobLagOk

`func (o *JobStat) GetMinJobLagOk() (*int32, bool)`

GetMinJobLagOk returns a tuple with the MinJobLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinJobLag

`func (o *JobStat) SetMinJobLag(v int32)`

SetMinJobLag sets MinJobLag field to given value.

### HasMinJobLag

`func (o *JobStat) HasMinJobLag() bool`

HasMinJobLag returns a boolean if a field has been set.

### GetPeriod

`func (o *JobStat) GetPeriod() string`

GetPeriod returns the Period field if non-nil, zero value otherwise.

### GetPeriodOk

`func (o *JobStat) GetPeriodOk() (*string, bool)`

GetPeriodOk returns a tuple with the Period field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriod

`func (o *JobStat) SetPeriod(v string)`

SetPeriod sets Period field to given value.

### HasPeriod

`func (o *JobStat) HasPeriod() bool`

HasPeriod returns a boolean if a field has been set.

### GetStartDt

`func (o *JobStat) GetStartDt() time.Time`

GetStartDt returns the StartDt field if non-nil, zero value otherwise.

### GetStartDtOk

`func (o *JobStat) GetStartDtOk() (*time.Time, bool)`

GetStartDtOk returns a tuple with the StartDt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartDt

`func (o *JobStat) SetStartDt(v time.Time)`

SetStartDt sets StartDt field to given value.

### HasStartDt

`func (o *JobStat) HasStartDt() bool`

HasStartDt returns a boolean if a field has been set.

### GetEndDt

`func (o *JobStat) GetEndDt() time.Time`

GetEndDt returns the EndDt field if non-nil, zero value otherwise.

### GetEndDtOk

`func (o *JobStat) GetEndDtOk() (*time.Time, bool)`

GetEndDtOk returns a tuple with the EndDt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndDt

`func (o *JobStat) SetEndDt(v time.Time)`

SetEndDt sets EndDt field to given value.

### HasEndDt

`func (o *JobStat) HasEndDt() bool`

HasEndDt returns a boolean if a field has been set.

### GetCreatedAt

`func (o *JobStat) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *JobStat) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *JobStat) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *JobStat) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *JobStat) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *JobStat) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *JobStat) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *JobStat) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


