# SingleJob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Name** | Pointer to **string** | The name of the job. | [optional] 
**Cron** | Pointer to **string** | The cron expression for the job. | [optional] 
**Enabled** | Pointer to **bool** | Whether the job is enabled or not. | [optional] 
**Command** | Pointer to **string** | The command that is executed when the job fires. | [optional] 
**LastRun** | Pointer to **NullableString** | The last time the job ran. | [optional] 
**NextRun** | Pointer to **time.Time** | The date and time of the job&#39;s next run. | [optional] 
**Success** | Pointer to **bool** | Whether the last run of the job was successful. | [optional] 
**Running** | Pointer to **bool** | Whether the job is currently running. | [optional] 
**Timezone** | Pointer to **string** | The timezone that the job will run in. | [optional] 
**Tags** | Pointer to **[]string** | An array of tags associated with the job. | [optional] 
**CreatedAt** | Pointer to **time.Time** | The UTC date and time that the object was created. | [optional] 
**UpdatedAt** | Pointer to **time.Time** | The UTC date and time that the object was last modified. | [optional] 
**SuccessCallback** | Pointer to **NullableString** | This url will receive a POST request with details about all successful job runs. | [optional] 
**FailureCallback** | Pointer to **NullableString** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] 
**AvgRunDuration** | Pointer to **NullableFloat32** | The average runtime across all runs of this job. | [optional] 
**MaxRunDuration** | Pointer to **NullableFloat32** | The maximum runtime across all runs of this job. | [optional] 
**MinRunDuration** | Pointer to **NullableFloat32** | The minimum runtime across all runs of this job. | [optional] 
**AvgRunDurationTrend** | Pointer to **NullableFloat32** | The average runtime trend across all runs of this job. | [optional] 
**AvgRunLag** | Pointer to **NullableFloat32** | The average job lag across all runs of this job. | [optional] 
**MaxRunLag** | Pointer to **NullableFloat32** | The maximum job lag across all runs of this job. | [optional] 
**MinRunLag** | Pointer to **NullableFloat32** | The minimum job lag across all runs of this job. | [optional] 
**AvgRunLagTrend** | Pointer to **NullableFloat32** | The average job lag trend across all runs of this job. | [optional] 

## Methods

### NewSingleJob

`func NewSingleJob() *SingleJob`

NewSingleJob instantiates a new SingleJob object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSingleJobWithDefaults

`func NewSingleJobWithDefaults() *SingleJob`

NewSingleJobWithDefaults instantiates a new SingleJob object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SingleJob) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SingleJob) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SingleJob) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SingleJob) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *SingleJob) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SingleJob) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SingleJob) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SingleJob) HasName() bool`

HasName returns a boolean if a field has been set.

### GetCron

`func (o *SingleJob) GetCron() string`

GetCron returns the Cron field if non-nil, zero value otherwise.

### GetCronOk

`func (o *SingleJob) GetCronOk() (*string, bool)`

GetCronOk returns a tuple with the Cron field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCron

`func (o *SingleJob) SetCron(v string)`

SetCron sets Cron field to given value.

### HasCron

`func (o *SingleJob) HasCron() bool`

HasCron returns a boolean if a field has been set.

### GetEnabled

`func (o *SingleJob) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *SingleJob) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *SingleJob) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *SingleJob) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetCommand

`func (o *SingleJob) GetCommand() string`

GetCommand returns the Command field if non-nil, zero value otherwise.

### GetCommandOk

`func (o *SingleJob) GetCommandOk() (*string, bool)`

GetCommandOk returns a tuple with the Command field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommand

`func (o *SingleJob) SetCommand(v string)`

SetCommand sets Command field to given value.

### HasCommand

`func (o *SingleJob) HasCommand() bool`

HasCommand returns a boolean if a field has been set.

### GetLastRun

`func (o *SingleJob) GetLastRun() string`

GetLastRun returns the LastRun field if non-nil, zero value otherwise.

### GetLastRunOk

`func (o *SingleJob) GetLastRunOk() (*string, bool)`

GetLastRunOk returns a tuple with the LastRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastRun

`func (o *SingleJob) SetLastRun(v string)`

SetLastRun sets LastRun field to given value.

### HasLastRun

`func (o *SingleJob) HasLastRun() bool`

HasLastRun returns a boolean if a field has been set.

### SetLastRunNil

`func (o *SingleJob) SetLastRunNil(b bool)`

 SetLastRunNil sets the value for LastRun to be an explicit nil

### UnsetLastRun
`func (o *SingleJob) UnsetLastRun()`

UnsetLastRun ensures that no value is present for LastRun, not even an explicit nil
### GetNextRun

`func (o *SingleJob) GetNextRun() time.Time`

GetNextRun returns the NextRun field if non-nil, zero value otherwise.

### GetNextRunOk

`func (o *SingleJob) GetNextRunOk() (*time.Time, bool)`

GetNextRunOk returns a tuple with the NextRun field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNextRun

`func (o *SingleJob) SetNextRun(v time.Time)`

SetNextRun sets NextRun field to given value.

### HasNextRun

`func (o *SingleJob) HasNextRun() bool`

HasNextRun returns a boolean if a field has been set.

### GetSuccess

`func (o *SingleJob) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *SingleJob) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *SingleJob) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *SingleJob) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetRunning

`func (o *SingleJob) GetRunning() bool`

GetRunning returns the Running field if non-nil, zero value otherwise.

### GetRunningOk

`func (o *SingleJob) GetRunningOk() (*bool, bool)`

GetRunningOk returns a tuple with the Running field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRunning

`func (o *SingleJob) SetRunning(v bool)`

SetRunning sets Running field to given value.

### HasRunning

`func (o *SingleJob) HasRunning() bool`

HasRunning returns a boolean if a field has been set.

### GetTimezone

`func (o *SingleJob) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *SingleJob) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *SingleJob) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *SingleJob) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### GetTags

`func (o *SingleJob) GetTags() []string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *SingleJob) GetTagsOk() (*[]string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *SingleJob) SetTags(v []string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *SingleJob) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetCreatedAt

`func (o *SingleJob) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SingleJob) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SingleJob) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *SingleJob) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *SingleJob) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *SingleJob) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *SingleJob) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *SingleJob) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.

### GetSuccessCallback

`func (o *SingleJob) GetSuccessCallback() string`

GetSuccessCallback returns the SuccessCallback field if non-nil, zero value otherwise.

### GetSuccessCallbackOk

`func (o *SingleJob) GetSuccessCallbackOk() (*string, bool)`

GetSuccessCallbackOk returns a tuple with the SuccessCallback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccessCallback

`func (o *SingleJob) SetSuccessCallback(v string)`

SetSuccessCallback sets SuccessCallback field to given value.

### HasSuccessCallback

`func (o *SingleJob) HasSuccessCallback() bool`

HasSuccessCallback returns a boolean if a field has been set.

### SetSuccessCallbackNil

`func (o *SingleJob) SetSuccessCallbackNil(b bool)`

 SetSuccessCallbackNil sets the value for SuccessCallback to be an explicit nil

### UnsetSuccessCallback
`func (o *SingleJob) UnsetSuccessCallback()`

UnsetSuccessCallback ensures that no value is present for SuccessCallback, not even an explicit nil
### GetFailureCallback

`func (o *SingleJob) GetFailureCallback() string`

GetFailureCallback returns the FailureCallback field if non-nil, zero value otherwise.

### GetFailureCallbackOk

`func (o *SingleJob) GetFailureCallbackOk() (*string, bool)`

GetFailureCallbackOk returns a tuple with the FailureCallback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureCallback

`func (o *SingleJob) SetFailureCallback(v string)`

SetFailureCallback sets FailureCallback field to given value.

### HasFailureCallback

`func (o *SingleJob) HasFailureCallback() bool`

HasFailureCallback returns a boolean if a field has been set.

### SetFailureCallbackNil

`func (o *SingleJob) SetFailureCallbackNil(b bool)`

 SetFailureCallbackNil sets the value for FailureCallback to be an explicit nil

### UnsetFailureCallback
`func (o *SingleJob) UnsetFailureCallback()`

UnsetFailureCallback ensures that no value is present for FailureCallback, not even an explicit nil
### GetAvgRunDuration

`func (o *SingleJob) GetAvgRunDuration() float32`

GetAvgRunDuration returns the AvgRunDuration field if non-nil, zero value otherwise.

### GetAvgRunDurationOk

`func (o *SingleJob) GetAvgRunDurationOk() (*float32, bool)`

GetAvgRunDurationOk returns a tuple with the AvgRunDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgRunDuration

`func (o *SingleJob) SetAvgRunDuration(v float32)`

SetAvgRunDuration sets AvgRunDuration field to given value.

### HasAvgRunDuration

`func (o *SingleJob) HasAvgRunDuration() bool`

HasAvgRunDuration returns a boolean if a field has been set.

### SetAvgRunDurationNil

`func (o *SingleJob) SetAvgRunDurationNil(b bool)`

 SetAvgRunDurationNil sets the value for AvgRunDuration to be an explicit nil

### UnsetAvgRunDuration
`func (o *SingleJob) UnsetAvgRunDuration()`

UnsetAvgRunDuration ensures that no value is present for AvgRunDuration, not even an explicit nil
### GetMaxRunDuration

`func (o *SingleJob) GetMaxRunDuration() float32`

GetMaxRunDuration returns the MaxRunDuration field if non-nil, zero value otherwise.

### GetMaxRunDurationOk

`func (o *SingleJob) GetMaxRunDurationOk() (*float32, bool)`

GetMaxRunDurationOk returns a tuple with the MaxRunDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxRunDuration

`func (o *SingleJob) SetMaxRunDuration(v float32)`

SetMaxRunDuration sets MaxRunDuration field to given value.

### HasMaxRunDuration

`func (o *SingleJob) HasMaxRunDuration() bool`

HasMaxRunDuration returns a boolean if a field has been set.

### SetMaxRunDurationNil

`func (o *SingleJob) SetMaxRunDurationNil(b bool)`

 SetMaxRunDurationNil sets the value for MaxRunDuration to be an explicit nil

### UnsetMaxRunDuration
`func (o *SingleJob) UnsetMaxRunDuration()`

UnsetMaxRunDuration ensures that no value is present for MaxRunDuration, not even an explicit nil
### GetMinRunDuration

`func (o *SingleJob) GetMinRunDuration() float32`

GetMinRunDuration returns the MinRunDuration field if non-nil, zero value otherwise.

### GetMinRunDurationOk

`func (o *SingleJob) GetMinRunDurationOk() (*float32, bool)`

GetMinRunDurationOk returns a tuple with the MinRunDuration field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinRunDuration

`func (o *SingleJob) SetMinRunDuration(v float32)`

SetMinRunDuration sets MinRunDuration field to given value.

### HasMinRunDuration

`func (o *SingleJob) HasMinRunDuration() bool`

HasMinRunDuration returns a boolean if a field has been set.

### SetMinRunDurationNil

`func (o *SingleJob) SetMinRunDurationNil(b bool)`

 SetMinRunDurationNil sets the value for MinRunDuration to be an explicit nil

### UnsetMinRunDuration
`func (o *SingleJob) UnsetMinRunDuration()`

UnsetMinRunDuration ensures that no value is present for MinRunDuration, not even an explicit nil
### GetAvgRunDurationTrend

`func (o *SingleJob) GetAvgRunDurationTrend() float32`

GetAvgRunDurationTrend returns the AvgRunDurationTrend field if non-nil, zero value otherwise.

### GetAvgRunDurationTrendOk

`func (o *SingleJob) GetAvgRunDurationTrendOk() (*float32, bool)`

GetAvgRunDurationTrendOk returns a tuple with the AvgRunDurationTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgRunDurationTrend

`func (o *SingleJob) SetAvgRunDurationTrend(v float32)`

SetAvgRunDurationTrend sets AvgRunDurationTrend field to given value.

### HasAvgRunDurationTrend

`func (o *SingleJob) HasAvgRunDurationTrend() bool`

HasAvgRunDurationTrend returns a boolean if a field has been set.

### SetAvgRunDurationTrendNil

`func (o *SingleJob) SetAvgRunDurationTrendNil(b bool)`

 SetAvgRunDurationTrendNil sets the value for AvgRunDurationTrend to be an explicit nil

### UnsetAvgRunDurationTrend
`func (o *SingleJob) UnsetAvgRunDurationTrend()`

UnsetAvgRunDurationTrend ensures that no value is present for AvgRunDurationTrend, not even an explicit nil
### GetAvgRunLag

`func (o *SingleJob) GetAvgRunLag() float32`

GetAvgRunLag returns the AvgRunLag field if non-nil, zero value otherwise.

### GetAvgRunLagOk

`func (o *SingleJob) GetAvgRunLagOk() (*float32, bool)`

GetAvgRunLagOk returns a tuple with the AvgRunLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgRunLag

`func (o *SingleJob) SetAvgRunLag(v float32)`

SetAvgRunLag sets AvgRunLag field to given value.

### HasAvgRunLag

`func (o *SingleJob) HasAvgRunLag() bool`

HasAvgRunLag returns a boolean if a field has been set.

### SetAvgRunLagNil

`func (o *SingleJob) SetAvgRunLagNil(b bool)`

 SetAvgRunLagNil sets the value for AvgRunLag to be an explicit nil

### UnsetAvgRunLag
`func (o *SingleJob) UnsetAvgRunLag()`

UnsetAvgRunLag ensures that no value is present for AvgRunLag, not even an explicit nil
### GetMaxRunLag

`func (o *SingleJob) GetMaxRunLag() float32`

GetMaxRunLag returns the MaxRunLag field if non-nil, zero value otherwise.

### GetMaxRunLagOk

`func (o *SingleJob) GetMaxRunLagOk() (*float32, bool)`

GetMaxRunLagOk returns a tuple with the MaxRunLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxRunLag

`func (o *SingleJob) SetMaxRunLag(v float32)`

SetMaxRunLag sets MaxRunLag field to given value.

### HasMaxRunLag

`func (o *SingleJob) HasMaxRunLag() bool`

HasMaxRunLag returns a boolean if a field has been set.

### SetMaxRunLagNil

`func (o *SingleJob) SetMaxRunLagNil(b bool)`

 SetMaxRunLagNil sets the value for MaxRunLag to be an explicit nil

### UnsetMaxRunLag
`func (o *SingleJob) UnsetMaxRunLag()`

UnsetMaxRunLag ensures that no value is present for MaxRunLag, not even an explicit nil
### GetMinRunLag

`func (o *SingleJob) GetMinRunLag() float32`

GetMinRunLag returns the MinRunLag field if non-nil, zero value otherwise.

### GetMinRunLagOk

`func (o *SingleJob) GetMinRunLagOk() (*float32, bool)`

GetMinRunLagOk returns a tuple with the MinRunLag field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinRunLag

`func (o *SingleJob) SetMinRunLag(v float32)`

SetMinRunLag sets MinRunLag field to given value.

### HasMinRunLag

`func (o *SingleJob) HasMinRunLag() bool`

HasMinRunLag returns a boolean if a field has been set.

### SetMinRunLagNil

`func (o *SingleJob) SetMinRunLagNil(b bool)`

 SetMinRunLagNil sets the value for MinRunLag to be an explicit nil

### UnsetMinRunLag
`func (o *SingleJob) UnsetMinRunLag()`

UnsetMinRunLag ensures that no value is present for MinRunLag, not even an explicit nil
### GetAvgRunLagTrend

`func (o *SingleJob) GetAvgRunLagTrend() float32`

GetAvgRunLagTrend returns the AvgRunLagTrend field if non-nil, zero value otherwise.

### GetAvgRunLagTrendOk

`func (o *SingleJob) GetAvgRunLagTrendOk() (*float32, bool)`

GetAvgRunLagTrendOk returns a tuple with the AvgRunLagTrend field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgRunLagTrend

`func (o *SingleJob) SetAvgRunLagTrend(v float32)`

SetAvgRunLagTrend sets AvgRunLagTrend field to given value.

### HasAvgRunLagTrend

`func (o *SingleJob) HasAvgRunLagTrend() bool`

HasAvgRunLagTrend returns a boolean if a field has been set.

### SetAvgRunLagTrendNil

`func (o *SingleJob) SetAvgRunLagTrendNil(b bool)`

 SetAvgRunLagTrendNil sets the value for AvgRunLagTrend to be an explicit nil

### UnsetAvgRunLagTrend
`func (o *SingleJob) UnsetAvgRunLagTrend()`

UnsetAvgRunLagTrend ensures that no value is present for AvgRunLagTrend, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


