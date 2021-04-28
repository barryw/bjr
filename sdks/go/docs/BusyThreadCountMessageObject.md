# BusyThreadCountMessageObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalBusy** | Pointer to **int32** | The total number of busy workers across all pods/hosts. | [optional] 
**Hosts** | Pointer to [**[]BusyThreadCountMessageObjectHosts**](BusyThreadCountMessageObjectHosts.md) |  | [optional] 

## Methods

### NewBusyThreadCountMessageObject

`func NewBusyThreadCountMessageObject() *BusyThreadCountMessageObject`

NewBusyThreadCountMessageObject instantiates a new BusyThreadCountMessageObject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBusyThreadCountMessageObjectWithDefaults

`func NewBusyThreadCountMessageObjectWithDefaults() *BusyThreadCountMessageObject`

NewBusyThreadCountMessageObjectWithDefaults instantiates a new BusyThreadCountMessageObject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTotalBusy

`func (o *BusyThreadCountMessageObject) GetTotalBusy() int32`

GetTotalBusy returns the TotalBusy field if non-nil, zero value otherwise.

### GetTotalBusyOk

`func (o *BusyThreadCountMessageObject) GetTotalBusyOk() (*int32, bool)`

GetTotalBusyOk returns a tuple with the TotalBusy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalBusy

`func (o *BusyThreadCountMessageObject) SetTotalBusy(v int32)`

SetTotalBusy sets TotalBusy field to given value.

### HasTotalBusy

`func (o *BusyThreadCountMessageObject) HasTotalBusy() bool`

HasTotalBusy returns a boolean if a field has been set.

### GetHosts

`func (o *BusyThreadCountMessageObject) GetHosts() []BusyThreadCountMessageObjectHosts`

GetHosts returns the Hosts field if non-nil, zero value otherwise.

### GetHostsOk

`func (o *BusyThreadCountMessageObject) GetHostsOk() (*[]BusyThreadCountMessageObjectHosts, bool)`

GetHostsOk returns a tuple with the Hosts field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHosts

`func (o *BusyThreadCountMessageObject) SetHosts(v []BusyThreadCountMessageObjectHosts)`

SetHosts sets Hosts field to given value.

### HasHosts

`func (o *BusyThreadCountMessageObject) HasHosts() bool`

HasHosts returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


