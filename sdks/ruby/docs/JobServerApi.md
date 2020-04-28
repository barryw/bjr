# BJR::JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobs_per_day**](JobServerApi.md#jobs_per_day) | **GET** /job_server_api/job_runs_per_day | Jobs Per Day



## jobs_per_day

> JobsPerDay jobs_per_day(opts)

Jobs Per Day

The number of jobs processed and failed by day

### Example

```ruby
# load the gem
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobServerApi.new
opts = {
  days: 56 # Integer | 
}

begin
  #Jobs Per Day
  result = api_instance.jobs_per_day(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->jobs_per_day: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **Integer**|  | [optional] 

### Return type

[**JobsPerDay**](JobsPerDay.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

