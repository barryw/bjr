# BJR::UserNewIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The new user&#39;s username. Must be unique. |  |
| **password** | **String** | The new user&#39;s password. |  |
| **password_confirmation** | **String** | The new user&#39;s password confirmation. Must match &#39;password&#39;. |  |

## Example

```ruby
require 'bjr4r'

instance = BJR::UserNewIn.new(
  username: null,
  password: null,
  password_confirmation: null
)
```

