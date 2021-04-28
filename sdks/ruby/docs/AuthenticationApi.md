# BJR::AuthenticationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authenticate_user**](AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token |


## authenticate_user

> <AuthOut> authenticate_user(opts)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Examples

```ruby
require 'time'
require 'bjr4r'

api_instance = BJR::AuthenticationApi.new
opts = {
  auth_in: BJR::AuthIn.new({username: 'username_example', password: 'password_example'}) # AuthIn | 
}

begin
  # Authenticates a user and returns a token
  result = api_instance.authenticate_user(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling AuthenticationApi->authenticate_user: #{e}"
end
```

#### Using the authenticate_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthOut>, Integer, Hash)> authenticate_user_with_http_info(opts)

```ruby
begin
  # Authenticates a user and returns a token
  data, status_code, headers = api_instance.authenticate_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthOut>
rescue BJR::ApiError => e
  puts "Error when calling AuthenticationApi->authenticate_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_in** | [**AuthIn**](AuthIn.md) |  | [optional] |

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

