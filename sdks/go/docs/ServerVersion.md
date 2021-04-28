# ServerVersion

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | The status message returned from the API call. | [optional] 
**IsError** | Pointer to **bool** | True if there was an error performing the API call. | [optional] 
**ObjectType** | Pointer to **string** | The type of object being returned. | [optional] 
**StatusCode** | Pointer to **int32** | The HTTP status code returned. | [optional] 
**Object** | Pointer to **string** | The BJR server version | [optional] 

## Methods

### NewServerVersion

`func NewServerVersion() *ServerVersion`

NewServerVersion instantiates a new ServerVersion object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewServerVersionWithDefaults

`func NewServerVersionWithDefaults() *ServerVersion`

NewServerVersionWithDefaults instantiates a new ServerVersion object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *ServerVersion) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *ServerVersion) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *ServerVersion) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *ServerVersion) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetIsError

`func (o *ServerVersion) GetIsError() bool`

GetIsError returns the IsError field if non-nil, zero value otherwise.

### GetIsErrorOk

`func (o *ServerVersion) GetIsErrorOk() (*bool, bool)`

GetIsErrorOk returns a tuple with the IsError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsError

`func (o *ServerVersion) SetIsError(v bool)`

SetIsError sets IsError field to given value.

### HasIsError

`func (o *ServerVersion) HasIsError() bool`

HasIsError returns a boolean if a field has been set.

### GetObjectType

`func (o *ServerVersion) GetObjectType() string`

GetObjectType returns the ObjectType field if non-nil, zero value otherwise.

### GetObjectTypeOk

`func (o *ServerVersion) GetObjectTypeOk() (*string, bool)`

GetObjectTypeOk returns a tuple with the ObjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObjectType

`func (o *ServerVersion) SetObjectType(v string)`

SetObjectType sets ObjectType field to given value.

### HasObjectType

`func (o *ServerVersion) HasObjectType() bool`

HasObjectType returns a boolean if a field has been set.

### GetStatusCode

`func (o *ServerVersion) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *ServerVersion) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *ServerVersion) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *ServerVersion) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetObject

`func (o *ServerVersion) GetObject() string`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *ServerVersion) GetObjectOk() (*string, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *ServerVersion) SetObject(v string)`

SetObject sets Object field to given value.

### HasObject

`func (o *ServerVersion) HasObject() bool`

HasObject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


