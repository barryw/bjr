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

// JobArrayMessage struct for JobArrayMessage
type JobArrayMessage struct {
	// The status message returned from the API call.
	Message *string `json:"message,omitempty"`
	// True if there was an error performing the API call.
	IsError *bool `json:"is_error,omitempty"`
	// The type of object being returned.
	ObjectType *string `json:"object_type,omitempty"`
	// The HTTP status code returned.
	StatusCode *int32 `json:"status_code,omitempty"`
	Object *[]SingleJob `json:"object,omitempty"`
}

// NewJobArrayMessage instantiates a new JobArrayMessage object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewJobArrayMessage() *JobArrayMessage {
	this := JobArrayMessage{}
	return &this
}

// NewJobArrayMessageWithDefaults instantiates a new JobArrayMessage object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewJobArrayMessageWithDefaults() *JobArrayMessage {
	this := JobArrayMessage{}
	return &this
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *JobArrayMessage) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobArrayMessage) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *JobArrayMessage) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *JobArrayMessage) SetMessage(v string) {
	o.Message = &v
}

// GetIsError returns the IsError field value if set, zero value otherwise.
func (o *JobArrayMessage) GetIsError() bool {
	if o == nil || o.IsError == nil {
		var ret bool
		return ret
	}
	return *o.IsError
}

// GetIsErrorOk returns a tuple with the IsError field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobArrayMessage) GetIsErrorOk() (*bool, bool) {
	if o == nil || o.IsError == nil {
		return nil, false
	}
	return o.IsError, true
}

// HasIsError returns a boolean if a field has been set.
func (o *JobArrayMessage) HasIsError() bool {
	if o != nil && o.IsError != nil {
		return true
	}

	return false
}

// SetIsError gets a reference to the given bool and assigns it to the IsError field.
func (o *JobArrayMessage) SetIsError(v bool) {
	o.IsError = &v
}

// GetObjectType returns the ObjectType field value if set, zero value otherwise.
func (o *JobArrayMessage) GetObjectType() string {
	if o == nil || o.ObjectType == nil {
		var ret string
		return ret
	}
	return *o.ObjectType
}

// GetObjectTypeOk returns a tuple with the ObjectType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobArrayMessage) GetObjectTypeOk() (*string, bool) {
	if o == nil || o.ObjectType == nil {
		return nil, false
	}
	return o.ObjectType, true
}

// HasObjectType returns a boolean if a field has been set.
func (o *JobArrayMessage) HasObjectType() bool {
	if o != nil && o.ObjectType != nil {
		return true
	}

	return false
}

// SetObjectType gets a reference to the given string and assigns it to the ObjectType field.
func (o *JobArrayMessage) SetObjectType(v string) {
	o.ObjectType = &v
}

// GetStatusCode returns the StatusCode field value if set, zero value otherwise.
func (o *JobArrayMessage) GetStatusCode() int32 {
	if o == nil || o.StatusCode == nil {
		var ret int32
		return ret
	}
	return *o.StatusCode
}

// GetStatusCodeOk returns a tuple with the StatusCode field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobArrayMessage) GetStatusCodeOk() (*int32, bool) {
	if o == nil || o.StatusCode == nil {
		return nil, false
	}
	return o.StatusCode, true
}

// HasStatusCode returns a boolean if a field has been set.
func (o *JobArrayMessage) HasStatusCode() bool {
	if o != nil && o.StatusCode != nil {
		return true
	}

	return false
}

// SetStatusCode gets a reference to the given int32 and assigns it to the StatusCode field.
func (o *JobArrayMessage) SetStatusCode(v int32) {
	o.StatusCode = &v
}

// GetObject returns the Object field value if set, zero value otherwise.
func (o *JobArrayMessage) GetObject() []SingleJob {
	if o == nil || o.Object == nil {
		var ret []SingleJob
		return ret
	}
	return *o.Object
}

// GetObjectOk returns a tuple with the Object field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *JobArrayMessage) GetObjectOk() (*[]SingleJob, bool) {
	if o == nil || o.Object == nil {
		return nil, false
	}
	return o.Object, true
}

// HasObject returns a boolean if a field has been set.
func (o *JobArrayMessage) HasObject() bool {
	if o != nil && o.Object != nil {
		return true
	}

	return false
}

// SetObject gets a reference to the given []SingleJob and assigns it to the Object field.
func (o *JobArrayMessage) SetObject(v []SingleJob) {
	o.Object = &v
}

func (o JobArrayMessage) MarshalJSON() ([]byte, error) {
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

type NullableJobArrayMessage struct {
	value *JobArrayMessage
	isSet bool
}

func (v NullableJobArrayMessage) Get() *JobArrayMessage {
	return v.value
}

func (v *NullableJobArrayMessage) Set(val *JobArrayMessage) {
	v.value = val
	v.isSet = true
}

func (v NullableJobArrayMessage) IsSet() bool {
	return v.isSet
}

func (v *NullableJobArrayMessage) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableJobArrayMessage(val *JobArrayMessage) *NullableJobArrayMessage {
	return &NullableJobArrayMessage{value: val, isSet: true}
}

func (v NullableJobArrayMessage) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableJobArrayMessage) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


