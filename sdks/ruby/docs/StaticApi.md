# BJR::StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](StaticApi.md#get_tags) | **GET** /static_api/tags | Get tags
[**get_timezones**](StaticApi.md#get_timezones) | **GET** /static_api/timezones | Get timezones
[**get_version**](StaticApi.md#get_version) | **GET** /version | Server version



## get_tags

> TagMessage get_tags

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example

```ruby
# load the gem
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::StaticApi.new

begin
  #Get tags
  result = api_instance.get_tags
  p result
rescue BJR::ApiError => e
  puts "Exception when calling StaticApi->get_tags: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_timezones

> TimezoneMessage get_timezones

Get timezones

Get the list of acceptable timezone names.

### Example

```ruby
# load the gem
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::StaticApi.new

begin
  #Get timezones
  result = api_instance.get_timezones
  p result
rescue BJR::ApiError => e
  puts "Exception when calling StaticApi->get_timezones: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TimezoneMessage**](TimezoneMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_version

> ServerVersion get_version

Server version

The BJR server version

### Example

```ruby
# load the gem
require 'bjr4r'

api_instance = BJR::StaticApi.new

begin
  #Server version
  result = api_instance.get_version
  p result
rescue BJR::ApiError => e
  puts "Exception when calling StaticApi->get_version: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServerVersion**](ServerVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

