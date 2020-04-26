# BJR::AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_user**](AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token



## authenticate_user

> AuthOut authenticate_user(opts)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example

```ruby
# load the gem
require 'bjr4r'

api_instance = BJR::AuthenticationApi.new
opts = {
  auth_in: BJR::AuthIn.new # AuthIn | 
}

begin
  #Authenticates a user and returns a token
  result = api_instance.authenticate_user(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling AuthenticationApi->authenticate_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_in** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

