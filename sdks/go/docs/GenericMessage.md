# GenericMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | The status message returned from the API call. | [optional] 
**IsError** | Pointer to **bool** | True if there was an error performing the API call. | [optional] 
**ObjectType** | Pointer to **string** | The type of object being returned. | [optional] 
**StatusCode** | Pointer to **int32** | The HTTP status code returned. | [optional] 
**Object** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewGenericMessage

`func NewGenericMessage() *GenericMessage`

NewGenericMessage instantiates a new GenericMessage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGenericMessageWithDefaults

`func NewGenericMessageWithDefaults() *GenericMessage`

NewGenericMessageWithDefaults instantiates a new GenericMessage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *GenericMessage) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *GenericMessage) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *GenericMessage) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *GenericMessage) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetIsError

`func (o *GenericMessage) GetIsError() bool`

GetIsError returns the IsError field if non-nil, zero value otherwise.

### GetIsErrorOk

`func (o *GenericMessage) GetIsErrorOk() (*bool, bool)`

GetIsErrorOk returns a tuple with the IsError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsError

`func (o *GenericMessage) SetIsError(v bool)`

SetIsError sets IsError field to given value.

### HasIsError

`func (o *GenericMessage) HasIsError() bool`

HasIsError returns a boolean if a field has been set.

### GetObjectType

`func (o *GenericMessage) GetObjectType() string`

GetObjectType returns the ObjectType field if non-nil, zero value otherwise.

### GetObjectTypeOk

`func (o *GenericMessage) GetObjectTypeOk() (*string, bool)`

GetObjectTypeOk returns a tuple with the ObjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObjectType

`func (o *GenericMessage) SetObjectType(v string)`

SetObjectType sets ObjectType field to given value.

### HasObjectType

`func (o *GenericMessage) HasObjectType() bool`

HasObjectType returns a boolean if a field has been set.

### GetStatusCode

`func (o *GenericMessage) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *GenericMessage) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *GenericMessage) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *GenericMessage) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetObject

`func (o *GenericMessage) GetObject() map[string]interface{}`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *GenericMessage) GetObjectOk() (*map[string]interface{}, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *GenericMessage) SetObject(v map[string]interface{})`

SetObject sets Object field to given value.

### HasObject

`func (o *GenericMessage) HasObject() bool`

HasObject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


