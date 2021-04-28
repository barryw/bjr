# AuthOut

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthToken** | Pointer to **string** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional] 
**UserId** | Pointer to **NullableInt32** | The id of the authenticated user. | [optional] 
**Message** | Pointer to **string** | If authentication failed, this will contain the reason why. | [optional] 
**IsError** | Pointer to **bool** | This will be true if the authentication was successful, and false if not. | [optional] 
**StatusCode** | Pointer to **int32** | The HTTP status code returned. | [optional] 

## Methods

### NewAuthOut

`func NewAuthOut() *AuthOut`

NewAuthOut instantiates a new AuthOut object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthOutWithDefaults

`func NewAuthOutWithDefaults() *AuthOut`

NewAuthOutWithDefaults instantiates a new AuthOut object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAuthToken

`func (o *AuthOut) GetAuthToken() string`

GetAuthToken returns the AuthToken field if non-nil, zero value otherwise.

### GetAuthTokenOk

`func (o *AuthOut) GetAuthTokenOk() (*string, bool)`

GetAuthTokenOk returns a tuple with the AuthToken field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthToken

`func (o *AuthOut) SetAuthToken(v string)`

SetAuthToken sets AuthToken field to given value.

### HasAuthToken

`func (o *AuthOut) HasAuthToken() bool`

HasAuthToken returns a boolean if a field has been set.

### GetUserId

`func (o *AuthOut) GetUserId() int32`

GetUserId returns the UserId field if non-nil, zero value otherwise.

### GetUserIdOk

`func (o *AuthOut) GetUserIdOk() (*int32, bool)`

GetUserIdOk returns a tuple with the UserId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUserId

`func (o *AuthOut) SetUserId(v int32)`

SetUserId sets UserId field to given value.

### HasUserId

`func (o *AuthOut) HasUserId() bool`

HasUserId returns a boolean if a field has been set.

### SetUserIdNil

`func (o *AuthOut) SetUserIdNil(b bool)`

 SetUserIdNil sets the value for UserId to be an explicit nil

### UnsetUserId
`func (o *AuthOut) UnsetUserId()`

UnsetUserId ensures that no value is present for UserId, not even an explicit nil
### GetMessage

`func (o *AuthOut) GetMessage() string`

GetMessage returns the Message field if non-nil, zero value otherwise.

### GetMessageOk

`func (o *AuthOut) GetMessageOk() (*string, bool)`

GetMessageOk returns a tuple with the Message field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMessage

`func (o *AuthOut) SetMessage(v string)`

SetMessage sets Message field to given value.

### HasMessage

`func (o *AuthOut) HasMessage() bool`

HasMessage returns a boolean if a field has been set.

### GetIsError

`func (o *AuthOut) GetIsError() bool`

GetIsError returns the IsError field if non-nil, zero value otherwise.

### GetIsErrorOk

`func (o *AuthOut) GetIsErrorOk() (*bool, bool)`

GetIsErrorOk returns a tuple with the IsError field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsError

`func (o *AuthOut) SetIsError(v bool)`

SetIsError sets IsError field to given value.

### HasIsError

`func (o *AuthOut) HasIsError() bool`

HasIsError returns a boolean if a field has been set.

### GetStatusCode

`func (o *AuthOut) GetStatusCode() int32`

GetStatusCode returns the StatusCode field if non-nil, zero value otherwise.

### GetStatusCodeOk

`func (o *AuthOut) GetStatusCodeOk() (*int32, bool)`

GetStatusCodeOk returns a tuple with the StatusCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatusCode

`func (o *AuthOut) SetStatusCode(v int32)`

SetStatusCode sets StatusCode field to given value.

### HasStatusCode

`func (o *AuthOut) HasStatusCode() bool`

HasStatusCode returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


