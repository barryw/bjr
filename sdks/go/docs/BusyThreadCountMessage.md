# BusyThreadCountMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | Pointer to **string** | The status message returned from the API call. | [optional] 
**IsError** | Pointer to **bool** | True if there was an error performing the API call. | [optional] 
**ObjectType** | Pointer to **string** | The type of object being returned. | [optional] 
**StatusCode** | Pointer to **int32** | The HTTP status code returned. | [optional] 
**Object** | Pointer to [**BusyThreadCountMessageObject**](BusyThreadCountMessageObject.md) |  | [optional] 

## Methods

### NewBusyThreadCountMessage

`func NewBusyThreadCountMessage() *BusyThreadCountMessage`

NewBusyThreadCountMessage instantiates a new BusyThreadCountMessage object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBusyThreadCountMessageWithDefaults

`func NewBusyThreadCountMessageWithDefaults() *BusyThreadCountMessage`

NewBusyThreadCountMessageWithDefaults instantiates a new BusyThreadCountMessage object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMessage

`func (o *BusyThreadCountMessage) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *BusyThreadCountMessage) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *BusyThreadCountMessage) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *BusyThreadCountMessage) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetIsError

`func (o *BusyThreadCountMessage) GetIsError() bool`

GetIsError returns the IsError field if non-nil, zero value otherwise.

### GetIsErrorOk

`func (o *BusyThreadCountMessage) GetIsErrorOk() (*bool, bool)`

GetIsErrorOk returns a tuple with the IsError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsError

`func (o *BusyThreadCountMessage) SetIsError(v bool)`

SetIsError sets IsError field to given value.

### HasIsError

`func (o *BusyThreadCountMessage) HasIsError() bool`

HasIsError returns a boolean if a field has been set.

### GetObjectType

`func (o *BusyThreadCountMessage) GetObjectType() string`

GetObjectType returns the ObjectType field if non-nil, zero value otherwise.

### GetObjectTypeOk

`func (o *BusyThreadCountMessage) GetObjectTypeOk() (*string, bool)`

GetObjectTypeOk returns a tuple with the ObjectType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObjectType

`func (o *BusyThreadCountMessage) SetObjectType(v string)`

SetObjectType sets ObjectType field to given value.

### HasObjectType

`func (o *BusyThreadCountMessage) HasObjectType() bool`

HasObjectType returns a boolean if a field has been set.

### GetStatusCode

`func (o *BusyThreadCountMessage) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *BusyThreadCountMessage) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *BusyThreadCountMessage) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *BusyThreadCountMessage) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.

### GetObject

`func (o *BusyThreadCountMessage) GetObject() BusyThreadCountMessageObject`

GetObject returns the Object field if non-nil, zero value otherwise.

### GetObjectOk

`func (o *BusyThreadCountMessage) GetObjectOk() (*BusyThreadCountMessageObject, bool)`

GetObjectOk returns a tuple with the Object field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetObject

`func (o *BusyThreadCountMessage) SetObject(v BusyThreadCountMessageObject)`

SetObject sets Object field to given value.

### HasObject

`func (o *BusyThreadCountMessage) HasObject() bool`

HasObject returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


