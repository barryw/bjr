# JobIn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | The new name of the job. Must be unique. | 
**Cron** | **string** | The new cron expression for the job. | 
**Command** | **string** | The command to run when the job fires. | 
**Timezone** | Pointer to **string** | The timezone to run the job in. | [optional] 
**Enabled** | Pointer to **bool** | Is the job enabled by default? | [optional] 
**Tags** | Pointer to **string** | A comma-separated list of tags to associate with this job. You can search jobs by their tags. | [optional] 
**SuccessCallback** | Pointer to **string** | Specify the url to receive a POST callback for all successful runs of this job. | [optional] 
**FailureCallback** | Pointer to **string** | Specify the url to receive a POST callback for all unsuccessful runs of this job. | [optional] 

## Methods

### NewJobIn

`func NewJobIn(name string, cron string, command string, ) *JobIn`

NewJobIn instantiates a new JobIn object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewJobInWithDefaults

`func NewJobInWithDefaults() *JobIn`

NewJobInWithDefaults instantiates a new JobIn object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *JobIn) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *JobIn) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *JobIn) SetName(v string)`

SetName sets Name field to given value.


### GetCron

`func (o *JobIn) GetCron() string`

GetCron returns the Cron field if non-nil, zero value otherwise.

### GetCronOk

`func (o *JobIn) GetCronOk() (*string, bool)`

GetCronOk returns a tuple with the Cron field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCron

`func (o *JobIn) SetCron(v string)`

SetCron sets Cron field to given value.


### GetCommand

`func (o *JobIn) GetCommand() string`

GetCommand returns the Command field if non-nil, zero value otherwise.

### GetCommandOk

`func (o *JobIn) GetCommandOk() (*string, bool)`

GetCommandOk returns a tuple with the Command field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommand

`func (o *JobIn) SetCommand(v string)`

SetCommand sets Command field to given value.


### GetTimezone

`func (o *JobIn) GetTimezone() string`

GetTimezone returns the Timezone field if non-nil, zero value otherwise.

### GetTimezoneOk

`func (o *JobIn) GetTimezoneOk() (*string, bool)`

GetTimezoneOk returns a tuple with the Timezone field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimezone

`func (o *JobIn) SetTimezone(v string)`

SetTimezone sets Timezone field to given value.

### HasTimezone

`func (o *JobIn) HasTimezone() bool`

HasTimezone returns a boolean if a field has been set.

### GetEnabled

`func (o *JobIn) GetEnabled() bool`

GetEnabled returns the Enabled field if non-nil, zero value otherwise.

### GetEnabledOk

`func (o *JobIn) GetEnabledOk() (*bool, bool)`

GetEnabledOk returns a tuple with the Enabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEnabled

`func (o *JobIn) SetEnabled(v bool)`

SetEnabled sets Enabled field to given value.

### HasEnabled

`func (o *JobIn) HasEnabled() bool`

HasEnabled returns a boolean if a field has been set.

### GetTags

`func (o *JobIn) GetTags() string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *JobIn) GetTagsOk() (*string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *JobIn) SetTags(v string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *JobIn) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetSuccessCallback

`func (o *JobIn) GetSuccessCallback() string`

GetSuccessCallback returns the SuccessCallback field if non-nil, zero value otherwise.

### GetSuccessCallbackOk

`func (o *JobIn) GetSuccessCallbackOk() (*string, bool)`

GetSuccessCallbackOk returns a tuple with the SuccessCallback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccessCallback

`func (o *JobIn) SetSuccessCallback(v string)`

SetSuccessCallback sets SuccessCallback field to given value.

### HasSuccessCallback

`func (o *JobIn) HasSuccessCallback() bool`

HasSuccessCallback returns a boolean if a field has been set.

### GetFailureCallback

`func (o *JobIn) GetFailureCallback() string`

GetFailureCallback returns the FailureCallback field if non-nil, zero value otherwise.

### GetFailureCallbackOk

`func (o *JobIn) GetFailureCallbackOk() (*string, bool)`

GetFailureCallbackOk returns a tuple with the FailureCallback field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailureCallback

`func (o *JobIn) SetFailureCallback(v string)`

SetFailureCallback sets FailureCallback field to given value.

### HasFailureCallback

`func (o *JobIn) HasFailureCallback() bool`

HasFailureCallback returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


