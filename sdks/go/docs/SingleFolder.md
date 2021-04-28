# SingleFolder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Name** | Pointer to **string** | The folder&#39;s name. Must be unique. | [optional] 
**Expression** | Pointer to **string** | The search expression used to determine which jobs appear in this folder. | [optional] 
**JobCount** | Pointer to **int32** | The number of jobs that match the folder&#39;s expression. | [optional] 

## Methods

### NewSingleFolder

`func NewSingleFolder() *SingleFolder`

NewSingleFolder instantiates a new SingleFolder object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSingleFolderWithDefaults

`func NewSingleFolderWithDefaults() *SingleFolder`

NewSingleFolderWithDefaults instantiates a new SingleFolder object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *SingleFolder) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SingleFolder) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SingleFolder) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SingleFolder) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *SingleFolder) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SingleFolder) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SingleFolder) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SingleFolder) HasName() bool`

HasName returns a boolean if a field has been set.

### GetExpression

`func (o *SingleFolder) GetExpression() string`

GetExpression returns the Expression field if non-nil, zero value otherwise.

### GetExpressionOk

`func (o *SingleFolder) GetExpressionOk() (*string, bool)`

GetExpressionOk returns a tuple with the Expression field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpression

`func (o *SingleFolder) SetExpression(v string)`

SetExpression sets Expression field to given value.

### HasExpression

`func (o *SingleFolder) HasExpression() bool`

HasExpression returns a boolean if a field has been set.

### GetJobCount

`func (o *SingleFolder) GetJobCount() int32`

GetJobCount returns the JobCount field if non-nil, zero value otherwise.

### GetJobCountOk

`func (o *SingleFolder) GetJobCountOk() (*int32, bool)`

GetJobCountOk returns a tuple with the JobCount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetJobCount

`func (o *SingleFolder) SetJobCount(v int32)`

SetJobCount sets JobCount field to given value.

### HasJobCount

`func (o *SingleFolder) HasJobCount() bool`

HasJobCount returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


