# BusyThreadCountMessageObjectHosts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | Pointer to **string** | The name of the worker host. | [optional] 
**Busy** | Pointer to **int32** | The number of busy threads on the worker. | [optional] 
**Pid** | Pointer to **int32** | The process ID of the worker process. | [optional] 

## Methods

### NewBusyThreadCountMessageObjectHosts

`func NewBusyThreadCountMessageObjectHosts() *BusyThreadCountMessageObjectHosts`

NewBusyThreadCountMessageObjectHosts instantiates a new BusyThreadCountMessageObjectHosts object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBusyThreadCountMessageObjectHostsWithDefaults

`func NewBusyThreadCountMessageObjectHostsWithDefaults() *BusyThreadCountMessageObjectHosts`

NewBusyThreadCountMessageObjectHostsWithDefaults instantiates a new BusyThreadCountMessageObjectHosts object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetName

`func (o *BusyThreadCountMessageObjectHosts) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *BusyThreadCountMessageObjectHosts) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *BusyThreadCountMessageObjectHosts) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *BusyThreadCountMessageObjectHosts) HasName() bool`

HasName returns a boolean if a field has been set.

### GetBusy

`func (o *BusyThreadCountMessageObjectHosts) GetBusy() int32`

GetBusy returns the Busy field if non-nil, zero value otherwise.

### GetBusyOk

`func (o *BusyThreadCountMessageObjectHosts) GetBusyOk() (*int32, bool)`

GetBusyOk returns a tuple with the Busy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBusy

`func (o *BusyThreadCountMessageObjectHosts) SetBusy(v int32)`

SetBusy sets Busy field to given value.

### HasBusy

`func (o *BusyThreadCountMessageObjectHosts) HasBusy() bool`

HasBusy returns a boolean if a field has been set.

### GetPid

`func (o *BusyThreadCountMessageObjectHosts) GetPid() int32`

GetPid returns the Pid field if non-nil, zero value otherwise.

### GetPidOk

`func (o *BusyThreadCountMessageObjectHosts) GetPidOk() (*int32, bool)`

GetPidOk returns a tuple with the Pid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPid

`func (o *BusyThreadCountMessageObjectHosts) SetPid(v int32)`

SetPid sets Pid field to given value.

### HasPid

`func (o *BusyThreadCountMessageObjectHosts) HasPid() bool`

HasPid returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


