# Tag

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**TaggingsCount** | Pointer to **int32** |  | [optional] 

## Methods

### NewTag

`func NewTag() *Tag`

NewTag instantiates a new Tag object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTagWithDefaults

`func NewTagWithDefaults() *Tag`

NewTagWithDefaults instantiates a new Tag object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Tag) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Tag) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Tag) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *Tag) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *Tag) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Tag) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Tag) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Tag) HasName() bool`

HasName returns a boolean if a field has been set.

### GetTaggingsCount

`func (o *Tag) GetTaggingsCount() int32`

GetTaggingsCount returns the TaggingsCount field if non-nil, zero value otherwise.

### GetTaggingsCountOk

`func (o *Tag) GetTaggingsCountOk() (*int32, bool)`

GetTaggingsCountOk returns a tuple with the TaggingsCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTaggingsCount

`func (o *Tag) SetTaggingsCount(v int32)`

SetTaggingsCount sets TaggingsCount field to given value.

### HasTaggingsCount

`func (o *Tag) HasTaggingsCount() bool`

HasTaggingsCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


