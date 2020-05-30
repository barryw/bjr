# BJR::BusyThreadCountMessageObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_busy** | **Integer** | The total number of busy workers across all pods/hosts. | [optional] 
**hosts** | [**Array&lt;BusyThreadCountMessageObjectHosts&gt;**](BusyThreadCountMessageObjectHosts.md) |  | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::BusyThreadCountMessageObject.new(total_busy: null,
                                 hosts: null)
```


