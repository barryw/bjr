# BJR::BusyThreadCountMessageObjectHosts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the worker host. | [optional] 
**busy** | **Integer** | The number of busy threads on the worker. | [optional] 
**pid** | **Integer** | The process ID of the worker process. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::BusyThreadCountMessageObjectHosts.new(name: null,
                                 busy: null,
                                 pid: null)
```


