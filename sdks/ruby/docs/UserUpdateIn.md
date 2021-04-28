# BJR::UserUpdateIn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The new user&#39;s password. |  |
| **password_confirmation** | **String** | The new user&#39;s password confirmation. Must match &#39;password&#39;. |  |

## Example

```ruby
require 'bjr4r'

instance = BJR::UserUpdateIn.new(
  password: null,
  password_confirmation: null
)
```

