# BJR::StaticApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tags**](StaticApi.md#get_tags) | **GET** /tags | Get tags |
| [**get_timezones**](StaticApi.md#get_timezones) | **GET** /timezones | Get timezones |
| [**get_version**](StaticApi.md#get_version) | **GET** /version | Server version |


## get_tags

> <TagMessage> get_tags(opts)

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::StaticApi.new
opts = {
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Get tags
  result = api_instance.get_tags(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagMessage>, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # Get tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagMessage>
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_timezones

> <TimezoneMessage> get_timezones

Get timezones

Get the list of acceptable timezone names.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::StaticApi.new

begin
  # Get timezones
  result = api_instance.get_timezones
  p result
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_timezones: #{e}"
end
```

#### Using the get_timezones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimezoneMessage>, Integer, Hash)> get_timezones_with_http_info

```ruby
begin
  # Get timezones
  data, status_code, headers = api_instance.get_timezones_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimezoneMessage>
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_timezones_with_http_info: #{e}"
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

> <ServerVersion> get_version

Server version

The BJR server version

### Examples

```ruby
require 'time'
require 'bjr4r'

api_instance = BJR::StaticApi.new

begin
  # Server version
  result = api_instance.get_version
  p result
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_version: #{e}"
end
```

#### Using the get_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerVersion>, Integer, Hash)> get_version_with_http_info

```ruby
begin
  # Server version
  data, status_code, headers = api_instance.get_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerVersion>
rescue BJR::ApiError => e
  puts "Error when calling StaticApi->get_version_with_http_info: #{e}"
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

