# BJR::BusyThreadCountMessageObjectHosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the worker host. | [optional] |
| **busy** | **Integer** | The number of busy threads on the worker. | [optional] |
| **pid** | **Integer** | The process ID of the worker process. | [optional] |

## Example

```ruby
require 'bjr4r'

instance = BJR::BusyThreadCountMessageObjectHosts.new(
  name: null,
  busy: null,
  pid: null
)
```

