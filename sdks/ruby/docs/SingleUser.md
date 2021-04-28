# BJR::SingleUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] |
| **username** | **String** | The user&#39; login name. Must be unique | [optional] |
| **created_at** | **Time** | The UTC date and time that the object was created. | [optional] |
| **updated_at** | **Time** | The UTC date and time that the object was last modified. | [optional] |

## Example

```ruby
require 'bjr4r'

instance = BJR::SingleUser.new(
  id: null,
  username: null,
  created_at: null,
  updated_at: null
)
```

