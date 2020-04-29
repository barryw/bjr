# BJR::JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobs_per_day**](JobServerApi.md#jobs_per_day) | **GET** /job_server_api/job_runs_per_day | Jobs Per Day
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/most_recent_jobs | Most Recent Jobs



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
  days: 56 # Integer | The number of days to return (max 30)
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
 **days** | **Integer**| The number of days to return (max 30) | [optional] 

### Return type

[**JobsPerDay**](JobsPerDay.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recent_jobs

> JobArrayMessage recent_jobs(opts)

Most Recent Jobs

Get a list of the most recently run jobs

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
  count: 56 # Integer | The number of jobs to return (max 20)
}

begin
  #Most Recent Jobs
  result = api_instance.recent_jobs(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->recent_jobs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| The number of jobs to return (max 20) | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

