# BJR::SingleFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] |
| **name** | **String** | The folder&#39;s name. Must be unique. | [optional] |
| **expression** | **String** | The search expression used to determine which jobs appear in this folder. | [optional] |
| **job_count** | **Integer** | The number of jobs that match the folder&#39;s expression. | [optional] |

## Example

```ruby
require 'bjr4r'

instance = BJR::SingleFolder.new(
  id: null,
  name: null,
  expression: null,
  job_count: null
)
```

