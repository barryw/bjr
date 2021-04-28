# JobArrayMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | The status message returned from the API call. | [optional] 
**IsError** | Pointer to **bool** | True if there was an error performing the API call. | [optional] 
**ObjectType** | Pointer to **string** | The type of object being returned. | [optional] 
**StatusCode** | Pointer to **int32** | The HTTP status code returned. | [optional] 
**Object** | Pointer to [**[]SingleJob**](SingleJob.md) |  | [optional] 

## Methods

### NewJobArrayMessage

`func NewJobArrayMessage() *JobArrayMessage`

NewJobArrayMessage instantiates a new JobArrayMessage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewJobArrayMessageWithDefaults

`func NewJobArrayMessageWithDefaults() *JobArrayMessage`

NewJobArrayMessageWithDefaults instantiates a new JobArrayMessage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *JobArrayMessage) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *JobArrayMessage) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *JobArrayMessage) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *JobArrayMessage) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetIsError

`func (o *JobArrayMessage) GetIsError() bool`

GetIsError returns the IsError field if non-nil, zero value otherwise.

### GetIsErrorOk

`func (o *JobArrayMessage) GetIsErrorOk() (*bool, bool)`

GetIsErrorOk returns a tuple with the IsError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsError

`func (o *JobArrayMessage) SetIsError(v bool)`

SetIsError sets IsError field to given value.

### HasIsError

`func (o *JobArrayMessage) HasIsError() bool`

HasIsError returns a boolean if a field has been set.

### GetObjectType

`func (o *JobArrayMessage) GetObjectType() string`

GetObjectType returns the ObjectType field if non-nil, zero value otherwise.

### GetObjectTypeOk

`func (o *JobArrayMessage) GetObjectTypeOk() (*string, bool)`

GetObjectTypeOk returns a tuple with the ObjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObjectType

`func (o *JobArrayMessage) SetObjectType(v string)`

SetObjectType sets ObjectType field to given value.

### HasObjectType

`func (o *JobArrayMessage) HasObjectType() bool`

HasObjectType returns a boolean if a field has been set.

### GetStatusCode

`func (o *JobArrayMessage) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *JobArrayMessage) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *JobArrayMessage) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *JobArrayMessage) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetObject

`func (o *JobArrayMessage) GetObject() []SingleJob`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *JobArrayMessage) GetObjectOk() (*[]SingleJob, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *JobArrayMessage) SetObject(v []SingleJob)`

SetObject sets Object field to given value.

### HasObject

`func (o *JobArrayMessage) HasObject() bool`

HasObject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


