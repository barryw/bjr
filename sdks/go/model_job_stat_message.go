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

// JobStatMessage struct for JobStatMessage
type JobStatMessage struct {
	// The status message returned from the API call.
	Message *string `json:"message,omitempty"`
	// True if there was an error performing the API call.
	IsError *bool `json:"is_error,omitempty"`
	// The type of object being returned.
	ObjectType *string `json:"object_type,omitempty"`
	// The HTTP status code returned.
	StatusCode *int32 `json:"status_code,omitempty"`
	Object *[]JobStat `json:"object,omitempty"`
}

// NewJobStatMessage instantiates a new JobStatMessage object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewJobStatMessage() *JobStatMessage {
	this := JobStatMessage{}
	return &this
}

// NewJobStatMessageWithDefaults instantiates a new JobStatMessage object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewJobStatMessageWithDefaults() *JobStatMessage {
	this := JobStatMessage{}
	return &this
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *JobStatMessage) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobStatMessage) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *JobStatMessage) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *JobStatMessage) SetMessage(v string) {
	o.Message = &v
}

// GetIsError returns the IsError field value if set, zero value otherwise.
func (o *JobStatMessage) GetIsError() bool {
	if o == nil || o.IsError == nil {
		var ret bool
		return ret
	}
	return *o.IsError
}

// GetIsErrorOk returns a tuple with the IsError field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobStatMessage) GetIsErrorOk() (*bool, bool) {
	if o == nil || o.IsError == nil {
		return nil, false
	}
	return o.IsError, true
}

// HasIsError returns a boolean if a field has been set.
func (o *JobStatMessage) HasIsError() bool {
	if o != nil && o.IsError != nil {
		return true
	}

	return false
}

// SetIsError gets a reference to the given bool and assigns it to the IsError field.
func (o *JobStatMessage) SetIsError(v bool) {
	o.IsError = &v
}

// GetObjectType returns the ObjectType field value if set, zero value otherwise.
func (o *JobStatMessage) GetObjectType() string {
	if o == nil || o.ObjectType == nil {
		var ret string
		return ret
	}
	return *o.ObjectType
}

// GetObjectTypeOk returns a tuple with the ObjectType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobStatMessage) GetObjectTypeOk() (*string, bool) {
	if o == nil || o.ObjectType == nil {
		return nil, false
	}
	return o.ObjectType, true
}

// HasObjectType returns a boolean if a field has been set.
func (o *JobStatMessage) HasObjectType() bool {
	if o != nil && o.ObjectType != nil {
		return true
	}

	return false
}

// SetObjectType gets a reference to the given string and assigns it to the ObjectType field.
func (o *JobStatMessage) SetObjectType(v string) {
	o.ObjectType = &v
}

// GetStatusCode returns the StatusCode field value if set, zero value otherwise.
func (o *JobStatMessage) GetStatusCode() int32 {
	if o == nil || o.StatusCode == nil {
		var ret int32
		return ret
	}
	return *o.StatusCode
}

// GetStatusCodeOk returns a tuple with the StatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobStatMessage) GetStatusCodeOk() (*int32, bool) {
	if o == nil || o.StatusCode == nil {
		return nil, false
	}
	return o.StatusCode, true
}

// HasStatusCode returns a boolean if a field has been set.
func (o *JobStatMessage) HasStatusCode() bool {
	if o != nil && o.StatusCode != nil {
		return true
	}

	return false
}

// SetStatusCode gets a reference to the given int32 and assigns it to the StatusCode field.
func (o *JobStatMessage) SetStatusCode(v int32) {
	o.StatusCode = &v
}

// GetObject returns the Object field value if set, zero value otherwise.
func (o *JobStatMessage) GetObject() []JobStat {
	if o == nil || o.Object == nil {
		var ret []JobStat
		return ret
	}
	return *o.Object
}

// GetObjectOk returns a tuple with the Object field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobStatMessage) GetObjectOk() (*[]JobStat, bool) {
	if o == nil || o.Object == nil {
		return nil, false
	}
	return o.Object, true
}

// HasObject returns a boolean if a field has been set.
func (o *JobStatMessage) HasObject() bool {
	if o != nil && o.Object != nil {
		return true
	}

	return false
}

// SetObject gets a reference to the given []JobStat and assigns it to the Object field.
func (o *JobStatMessage) SetObject(v []JobStat) {
	o.Object = &v
}

func (o JobStatMessage) MarshalJSON() ([]byte, error) {
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

type NullableJobStatMessage struct {
	value *JobStatMessage
	isSet bool
}

func (v NullableJobStatMessage) Get() *JobStatMessage {
	return v.value
}

func (v *NullableJobStatMessage) Set(val *JobStatMessage) {
	v.value = val
	v.isSet = true
}

func (v NullableJobStatMessage) IsSet() bool {
	return v.isSet
}

func (v *NullableJobStatMessage) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableJobStatMessage(val *JobStatMessage) *NullableJobStatMessage {
	return &NullableJobStatMessage{value: val, isSet: true}
}

func (v NullableJobStatMessage) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableJobStatMessage) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


