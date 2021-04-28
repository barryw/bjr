# SingleJobRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Success** | Pointer to **bool** | Whether the run was successful or not. | [optional] 
**ReturnCode** | Pointer to **int32** | The return code that the command exited with. 0 means success. | [optional] 
**ErrorMessage** | Pointer to **NullableString** | If the run failed, the error message that was returned. | [optional] 
**Stdout** | Pointer to **NullableString** | The text written to STDOUT as part of the job. | [optional] 
**Stderr** | Pointer to **NullableString** | The text written to STDERR as part of the job. | [optional] 
**StartTime** | Pointer to **time.Time** | The date and time that the run started. | [optional] 
**EndTime** | Pointer to **time.Time** | The date and time that the run ended. | [optional] 
**ScheduledStartTime** | Pointer to **NullableTime** | The date and time that the job should have run. | [optional] 
**ScheduleDiffInSeconds** | Pointer to **NullableInt32** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] 
**JobId** | Pointer to **int32** | The job that the run is associated with. | [optional] 
**IsManual** | Pointer to **bool** | True if the job was run manually as opposed to run on a schedule. | [optional] 
**CreatedAt** | Pointer to **time.Time** | The date and time that the run record was created in UTC. | [optional] 
**UpdatedAt** | Pointer to **time.Time** | The date and time that the run record was last updated in UTC. | [optional] 

## Methods

### NewSingleJobRun

`func NewSingleJobRun() *SingleJobRun`

NewSingleJobRun instantiates a new SingleJobRun object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSingleJobRunWithDefaults

`func NewSingleJobRunWithDefaults() *SingleJobRun`

NewSingleJobRunWithDefaults instantiates a new SingleJobRun object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SingleJobRun) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SingleJobRun) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SingleJobRun) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SingleJobRun) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSuccess

`func (o *SingleJobRun) GetSuccess() bool`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *SingleJobRun) GetSuccessOk() (*bool, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *SingleJobRun) SetSuccess(v bool)`

SetSuccess sets Success field to given value.

### HasSuccess

`func (o *SingleJobRun) HasSuccess() bool`

HasSuccess returns a boolean if a field has been set.

### GetReturnCode

`func (o *SingleJobRun) GetReturnCode() int32`

GetReturnCode returns the ReturnCode field if non-nil, zero value otherwise.

### GetReturnCodeOk

`func (o *SingleJobRun) GetReturnCodeOk() (*int32, bool)`

GetReturnCodeOk returns a tuple with the ReturnCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnCode

`func (o *SingleJobRun) SetReturnCode(v int32)`

SetReturnCode sets ReturnCode field to given value.

### HasReturnCode

`func (o *SingleJobRun) HasReturnCode() bool`

HasReturnCode returns a boolean if a field has been set.

### GetErrorMessage

`func (o *SingleJobRun) GetErrorMessage() string`

GetErrorMessage returns the ErrorMessage field if non-nil, zero value otherwise.

### GetErrorMessageOk

`func (o *SingleJobRun) GetErrorMessageOk() (*string, bool)`

GetErrorMessageOk returns a tuple with the ErrorMessage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrorMessage

`func (o *SingleJobRun) SetErrorMessage(v string)`

SetErrorMessage sets ErrorMessage field to given value.

### HasErrorMessage

`func (o *SingleJobRun) HasErrorMessage() bool`

HasErrorMessage returns a boolean if a field has been set.

### SetErrorMessageNil

`func (o *SingleJobRun) SetErrorMessageNil(b bool)`

 SetErrorMessageNil sets the value for ErrorMessage to be an explicit nil

### UnsetErrorMessage
`func (o *SingleJobRun) UnsetErrorMessage()`

UnsetErrorMessage ensures that no value is present for ErrorMessage, not even an explicit nil
### GetStdout

`func (o *SingleJobRun) GetStdout() string`

GetStdout returns the Stdout field if non-nil, zero value otherwise.

### GetStdoutOk

`func (o *SingleJobRun) GetStdoutOk() (*string, bool)`

GetStdoutOk returns a tuple with the Stdout field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStdout

`func (o *SingleJobRun) SetStdout(v string)`

SetStdout sets Stdout field to given value.

### HasStdout

`func (o *SingleJobRun) HasStdout() bool`

HasStdout returns a boolean if a field has been set.

### SetStdoutNil

`func (o *SingleJobRun) SetStdoutNil(b bool)`

 SetStdoutNil sets the value for Stdout to be an explicit nil

### UnsetStdout
`func (o *SingleJobRun) UnsetStdout()`

UnsetStdout ensures that no value is present for Stdout, not even an explicit nil
### GetStderr

`func (o *SingleJobRun) GetStderr() string`

GetStderr returns the Stderr field if non-nil, zero value otherwise.

### GetStderrOk

`func (o *SingleJobRun) GetStderrOk() (*string, bool)`

GetStderrOk returns a tuple with the Stderr field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStderr

`func (o *SingleJobRun) SetStderr(v string)`

SetStderr sets Stderr field to given value.

### HasStderr

`func (o *SingleJobRun) HasStderr() bool`

HasStderr returns a boolean if a field has been set.

### SetStderrNil

`func (o *SingleJobRun) SetStderrNil(b bool)`

 SetStderrNil sets the value for Stderr to be an explicit nil

### UnsetStderr
`func (o *SingleJobRun) UnsetStderr()`

UnsetStderr ensures that no value is present for Stderr, not even an explicit nil
### GetStartTime

`func (o *SingleJobRun) GetStartTime() time.Time`

GetStartTime returns the StartTime field if non-nil, zero value otherwise.

### GetStartTimeOk

`func (o *SingleJobRun) GetStartTimeOk() (*time.Time, bool)`

GetStartTimeOk returns a tuple with the StartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStartTime

`func (o *SingleJobRun) SetStartTime(v time.Time)`

SetStartTime sets StartTime field to given value.

### HasStartTime

`func (o *SingleJobRun) HasStartTime() bool`

HasStartTime returns a boolean if a field has been set.

### GetEndTime

`func (o *SingleJobRun) GetEndTime() time.Time`

GetEndTime returns the EndTime field if non-nil, zero value otherwise.

### GetEndTimeOk

`func (o *SingleJobRun) GetEndTimeOk() (*time.Time, bool)`

GetEndTimeOk returns a tuple with the EndTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEndTime

`func (o *SingleJobRun) SetEndTime(v time.Time)`

SetEndTime sets EndTime field to given value.

### HasEndTime

`func (o *SingleJobRun) HasEndTime() bool`

HasEndTime returns a boolean if a field has been set.

### GetScheduledStartTime

`func (o *SingleJobRun) GetScheduledStartTime() time.Time`

GetScheduledStartTime returns the ScheduledStartTime field if non-nil, zero value otherwise.

### GetScheduledStartTimeOk

`func (o *SingleJobRun) GetScheduledStartTimeOk() (*time.Time, bool)`

GetScheduledStartTimeOk returns a tuple with the ScheduledStartTime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduledStartTime

`func (o *SingleJobRun) SetScheduledStartTime(v time.Time)`

SetScheduledStartTime sets ScheduledStartTime field to given value.

### HasScheduledStartTime

`func (o *SingleJobRun) HasScheduledStartTime() bool`

HasScheduledStartTime returns a boolean if a field has been set.

### SetScheduledStartTimeNil

`func (o *SingleJobRun) SetScheduledStartTimeNil(b bool)`

 SetScheduledStartTimeNil sets the value for ScheduledStartTime to be an explicit nil

### UnsetScheduledStartTime
`func (o *SingleJobRun) UnsetScheduledStartTime()`

UnsetScheduledStartTime ensures that no value is present for ScheduledStartTime, not even an explicit nil
### GetScheduleDiffInSeconds

`func (o *SingleJobRun) GetScheduleDiffInSeconds() int32`

GetScheduleDiffInSeconds returns the ScheduleDiffInSeconds field if non-nil, zero value otherwise.

### GetScheduleDiffInSecondsOk

`func (o *SingleJobRun) GetScheduleDiffInSecondsOk() (*int32, bool)`

GetScheduleDiffInSecondsOk returns a tuple with the ScheduleDiffInSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScheduleDiffInSeconds

`func (o *SingleJobRun) SetScheduleDiffInSeconds(v int32)`

SetScheduleDiffInSeconds sets ScheduleDiffInSeconds field to given value.

### HasScheduleDiffInSeconds

`func (o *SingleJobRun) HasScheduleDiffInSeconds() bool`

HasScheduleDiffInSeconds returns a boolean if a field has been set.

### SetScheduleDiffInSecondsNil

`func (o *SingleJobRun) SetScheduleDiffInSecondsNil(b bool)`

 SetScheduleDiffInSecondsNil sets the value for ScheduleDiffInSeconds to be an explicit nil

### UnsetScheduleDiffInSeconds
`func (o *SingleJobRun) UnsetScheduleDiffInSeconds()`

UnsetScheduleDiffInSeconds ensures that no value is present for ScheduleDiffInSeconds, not even an explicit nil
### GetJobId

`func (o *SingleJobRun) GetJobId() int32`

GetJobId returns the JobId field if non-nil, zero value otherwise.

### GetJobIdOk

`func (o *SingleJobRun) GetJobIdOk() (*int32, bool)`

GetJobIdOk returns a tuple with the JobId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobId

`func (o *SingleJobRun) SetJobId(v int32)`

SetJobId sets JobId field to given value.

### HasJobId

`func (o *SingleJobRun) HasJobId() bool`

HasJobId returns a boolean if a field has been set.

### GetIsManual

`func (o *SingleJobRun) GetIsManual() bool`

GetIsManual returns the IsManual field if non-nil, zero value otherwise.

### GetIsManualOk

`func (o *SingleJobRun) GetIsManualOk() (*bool, bool)`

GetIsManualOk returns a tuple with the IsManual field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsManual

`func (o *SingleJobRun) SetIsManual(v bool)`

SetIsManual sets IsManual field to given value.

### HasIsManual

`func (o *SingleJobRun) HasIsManual() bool`

HasIsManual returns a boolean if a field has been set.

### GetCreatedAt

`func (o *SingleJobRun) GetCreatedAt() time.Time`

GetCreatedAt returns the CreatedAt field if non-nil, zero value otherwise.

### GetCreatedAtOk

`func (o *SingleJobRun) GetCreatedAtOk() (*time.Time, bool)`

GetCreatedAtOk returns a tuple with the CreatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedAt

`func (o *SingleJobRun) SetCreatedAt(v time.Time)`

SetCreatedAt sets CreatedAt field to given value.

### HasCreatedAt

`func (o *SingleJobRun) HasCreatedAt() bool`

HasCreatedAt returns a boolean if a field has been set.

### GetUpdatedAt

`func (o *SingleJobRun) GetUpdatedAt() time.Time`

GetUpdatedAt returns the UpdatedAt field if non-nil, zero value otherwise.

### GetUpdatedAtOk

`func (o *SingleJobRun) GetUpdatedAtOk() (*time.Time, bool)`

GetUpdatedAtOk returns a tuple with the UpdatedAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedAt

`func (o *SingleJobRun) SetUpdatedAt(v time.Time)`

SetUpdatedAt sets UpdatedAt field to given value.

### HasUpdatedAt

`func (o *SingleJobRun) HasUpdatedAt() bool`

HasUpdatedAt returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


