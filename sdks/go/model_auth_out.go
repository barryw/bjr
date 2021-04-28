/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * API version: v1
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package BJR

import (
	"encoding/json"
)

// AuthOut struct for AuthOut
type AuthOut struct {
	// The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
	AuthToken *string `json:"auth_token,omitempty"`
	// The id of the authenticated user.
	UserId NullableInt32 `json:"user_id,omitempty"`
	// If authentication failed, this will contain the reason why.
	Message *string `json:"message,omitempty"`
	// This will be true if the authentication was successful, and false if not.
	IsError *bool `json:"is_error,omitempty"`
	// The HTTP status code returned.
	StatusCode *int32 `json:"status_code,omitempty"`
}

// NewAuthOut instantiates a new AuthOut object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAuthOut() *AuthOut {
	this := AuthOut{}
	return &this
}

// NewAuthOutWithDefaults instantiates a new AuthOut object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAuthOutWithDefaults() *AuthOut {
	this := AuthOut{}
	return &this
}

// GetAuthToken returns the AuthToken field value if set, zero value otherwise.
func (o *AuthOut) GetAuthToken() string {
	if o == nil || o.AuthToken == nil {
		var ret string
		return ret
	}
	return *o.AuthToken
}

// GetAuthTokenOk returns a tuple with the AuthToken field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AuthOut) GetAuthTokenOk() (*string, bool) {
	if o == nil || o.AuthToken == nil {
		return nil, false
	}
	return o.AuthToken, true
}

// HasAuthToken returns a boolean if a field has been set.
func (o *AuthOut) HasAuthToken() bool {
	if o != nil && o.AuthToken != nil {
		return true
	}

	return false
}

// SetAuthToken gets a reference to the given string and assigns it to the AuthToken field.
func (o *AuthOut) SetAuthToken(v string) {
	o.AuthToken = &v
}

// GetUserId returns the UserId field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *AuthOut) GetUserId() int32 {
	if o == nil || o.UserId.Get() == nil {
		var ret int32
		return ret
	}
	return *o.UserId.Get()
}

// GetUserIdOk returns a tuple with the UserId field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *AuthOut) GetUserIdOk() (*int32, bool) {
	if o == nil  {
		return nil, false
	}
	return o.UserId.Get(), o.UserId.IsSet()
}

// HasUserId returns a boolean if a field has been set.
func (o *AuthOut) HasUserId() bool {
	if o != nil && o.UserId.IsSet() {
		return true
	}

	return false
}

// SetUserId gets a reference to the given NullableInt32 and assigns it to the UserId field.
func (o *AuthOut) SetUserId(v int32) {
	o.UserId.Set(&v)
}
// SetUserIdNil sets the value for UserId to be an explicit nil
func (o *AuthOut) SetUserIdNil() {
	o.UserId.Set(nil)
}

// UnsetUserId ensures that no value is present for UserId, not even an explicit nil
func (o *AuthOut) UnsetUserId() {
	o.UserId.Unset()
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *AuthOut) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AuthOut) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *AuthOut) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *AuthOut) SetMessage(v string) {
	o.Message = &v
}

// GetIsError returns the IsError field value if set, zero value otherwise.
func (o *AuthOut) GetIsError() bool {
	if o == nil || o.IsError == nil {
		var ret bool
		return ret
	}
	return *o.IsError
}

// GetIsErrorOk returns a tuple with the IsError field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AuthOut) GetIsErrorOk() (*bool, bool) {
	if o == nil || o.IsError == nil {
		return nil, false
	}
	return o.IsError, true
}

// HasIsError returns a boolean if a field has been set.
func (o *AuthOut) HasIsError() bool {
	if o != nil && o.IsError != nil {
		return true
	}

	return false
}

// SetIsError gets a reference to the given bool and assigns it to the IsError field.
func (o *AuthOut) SetIsError(v bool) {
	o.IsError = &v
}

// GetStatusCode returns the StatusCode field value if set, zero value otherwise.
func (o *AuthOut) GetStatusCode() int32 {
	if o == nil || o.StatusCode == nil {
		var ret int32
		return ret
	}
	return *o.StatusCode
}

// GetStatusCodeOk returns a tuple with the StatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AuthOut) GetStatusCodeOk() (*int32, bool) {
	if o == nil || o.StatusCode == nil {
		return nil, false
	}
	return o.StatusCode, true
}

// HasStatusCode returns a boolean if a field has been set.
func (o *AuthOut) HasStatusCode() bool {
	if o != nil && o.StatusCode != nil {
		return true
	}

	return false
}

// SetStatusCode gets a reference to the given int32 and assigns it to the StatusCode field.
func (o *AuthOut) SetStatusCode(v int32) {
	o.StatusCode = &v
}

func (o AuthOut) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.AuthToken != nil {
		toSerialize["auth_token"] = o.AuthToken
	}
	if o.UserId.IsSet() {
		toSerialize["user_id"] = o.UserId.Get()
	}
	if o.Message != nil {
		toSerialize["message"] = o.Message
	}
	if o.IsError != nil {
		toSerialize["is_error"] = o.IsError
	}
	if o.StatusCode != nil {
		toSerialize["status_code"] = o.StatusCode
	}
	return json.Marshal(toSerialize)
}

type NullableAuthOut struct {
	value *AuthOut
	isSet bool
}

func (v NullableAuthOut) Get() *AuthOut {
	return v.value
}

func (v *NullableAuthOut) Set(val *AuthOut) {
	v.value = val
	v.isSet = true
}

func (v NullableAuthOut) IsSet() bool {
	return v.isSet
}

func (v *NullableAuthOut) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAuthOut(val *AuthOut) *NullableAuthOut {
	return &NullableAuthOut{value: val, isSet: true}
}

func (v NullableAuthOut) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAuthOut) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


