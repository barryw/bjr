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

// BusyThreadCountMessage struct for BusyThreadCountMessage
type BusyThreadCountMessage struct {
	// The status message returned from the API call.
	Message *string `json:"message,omitempty"`
	// True if there was an error performing the API call.
	IsError *bool `json:"is_error,omitempty"`
	// The type of object being returned.
	ObjectType *string `json:"object_type,omitempty"`
	// The HTTP status code returned.
	StatusCode *int32 `json:"status_code,omitempty"`
	Object *BusyThreadCountMessageObject `json:"object,omitempty"`
}

// NewBusyThreadCountMessage instantiates a new BusyThreadCountMessage object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewBusyThreadCountMessage() *BusyThreadCountMessage {
	this := BusyThreadCountMessage{}
	return &this
}

// NewBusyThreadCountMessageWithDefaults instantiates a new BusyThreadCountMessage object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewBusyThreadCountMessageWithDefaults() *BusyThreadCountMessage {
	this := BusyThreadCountMessage{}
	return &this
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *BusyThreadCountMessage) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BusyThreadCountMessage) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *BusyThreadCountMessage) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *BusyThreadCountMessage) SetMessage(v string) {
	o.Message = &v
}

// GetIsError returns the IsError field value if set, zero value otherwise.
func (o *BusyThreadCountMessage) GetIsError() bool {
	if o == nil || o.IsError == nil {
		var ret bool
		return ret
	}
	return *o.IsError
}

// GetIsErrorOk returns a tuple with the IsError field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BusyThreadCountMessage) GetIsErrorOk() (*bool, bool) {
	if o == nil || o.IsError == nil {
		return nil, false
	}
	return o.IsError, true
}

// HasIsError returns a boolean if a field has been set.
func (o *BusyThreadCountMessage) HasIsError() bool {
	if o != nil && o.IsError != nil {
		return true
	}

	return false
}

// SetIsError gets a reference to the given bool and assigns it to the IsError field.
func (o *BusyThreadCountMessage) SetIsError(v bool) {
	o.IsError = &v
}

// GetObjectType returns the ObjectType field value if set, zero value otherwise.
func (o *BusyThreadCountMessage) GetObjectType() string {
	if o == nil || o.ObjectType == nil {
		var ret string
		return ret
	}
	return *o.ObjectType
}

// GetObjectTypeOk returns a tuple with the ObjectType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BusyThreadCountMessage) GetObjectTypeOk() (*string, bool) {
	if o == nil || o.ObjectType == nil {
		return nil, false
	}
	return o.ObjectType, true
}

// HasObjectType returns a boolean if a field has been set.
func (o *BusyThreadCountMessage) HasObjectType() bool {
	if o != nil && o.ObjectType != nil {
		return true
	}

	return false
}

// SetObjectType gets a reference to the given string and assigns it to the ObjectType field.
func (o *BusyThreadCountMessage) SetObjectType(v string) {
	o.ObjectType = &v
}

// GetStatusCode returns the StatusCode field value if set, zero value otherwise.
func (o *BusyThreadCountMessage) GetStatusCode() int32 {
	if o == nil || o.StatusCode == nil {
		var ret int32
		return ret
	}
	return *o.StatusCode
}

// GetStatusCodeOk returns a tuple with the StatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BusyThreadCountMessage) GetStatusCodeOk() (*int32, bool) {
	if o == nil || o.StatusCode == nil {
		return nil, false
	}
	return o.StatusCode, true
}

// HasStatusCode returns a boolean if a field has been set.
func (o *BusyThreadCountMessage) HasStatusCode() bool {
	if o != nil && o.StatusCode != nil {
		return true
	}

	return false
}

// SetStatusCode gets a reference to the given int32 and assigns it to the StatusCode field.
func (o *BusyThreadCountMessage) SetStatusCode(v int32) {
	o.StatusCode = &v
}

// GetObject returns the Object field value if set, zero value otherwise.
func (o *BusyThreadCountMessage) GetObject() BusyThreadCountMessageObject {
	if o == nil || o.Object == nil {
		var ret BusyThreadCountMessageObject
		return ret
	}
	return *o.Object
}

// GetObjectOk returns a tuple with the Object field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *BusyThreadCountMessage) GetObjectOk() (*BusyThreadCountMessageObject, bool) {
	if o == nil || o.Object == nil {
		return nil, false
	}
	return o.Object, true
}

// HasObject returns a boolean if a field has been set.
func (o *BusyThreadCountMessage) HasObject() bool {
	if o != nil && o.Object != nil {
		return true
	}

	return false
}

// SetObject gets a reference to the given BusyThreadCountMessageObject and assigns it to the Object field.
func (o *BusyThreadCountMessage) SetObject(v BusyThreadCountMessageObject) {
	o.Object = &v
}

func (o BusyThreadCountMessage) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Message != nil {
		toSerialize["message"] = o.Message
	}
	if o.IsError != nil {
		toSerialize["is_error"] = o.IsError
	}
	if o.ObjectType != nil {
		toSerialize["object_type"] = o.ObjectType
	}
	if o.StatusCode != nil {
		toSerialize["status_code"] = o.StatusCode
	}
	if o.Object != nil {
		toSerialize["object"] = o.Object
	}
	return json.Marshal(toSerialize)
}

type NullableBusyThreadCountMessage struct {
	value *BusyThreadCountMessage
	isSet bool
}

func (v NullableBusyThreadCountMessage) Get() *BusyThreadCountMessage {
	return v.value
}

func (v *NullableBusyThreadCountMessage) Set(val *BusyThreadCountMessage) {
	v.value = val
	v.isSet = true
}

func (v NullableBusyThreadCountMessage) IsSet() bool {
	return v.isSet
}

func (v *NullableBusyThreadCountMessage) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableBusyThreadCountMessage(val *BusyThreadCountMessage) *NullableBusyThreadCountMessage {
	return &NullableBusyThreadCountMessage{value: val, isSet: true}
}

func (v NullableBusyThreadCountMessage) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableBusyThreadCountMessage) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


