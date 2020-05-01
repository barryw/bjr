# BJR::JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**stats_by_hour**](JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**stats_by_minute**](JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**upcoming_jobs**](JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs



## recent_jobs

> JobArrayMessage recent_jobs(opts)

List of recent jobs

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
  #List of recent jobs
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


## stats_by_hour

> JobStatMessage stats_by_hour

Job statistics by hour

Get hourly job statistics for the day

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

begin
  #Job statistics by hour
  result = api_instance.stats_by_hour
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->stats_by_hour: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_minute

> JobStatMessage stats_by_minute(opts)

Job statistics by minute

Get minutely job statistics

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
  count: 56 # Integer | The number of stats to return (max 60)
}

begin
  #Job statistics by minute
  result = api_instance.stats_by_minute(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->stats_by_minute: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| The number of stats to return (max 60) | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upcoming_jobs

> JobArrayMessage upcoming_jobs(opts)

List of upcoming jobs

A list of jobs that are about to execute

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
  #List of upcoming jobs
  result = api_instance.upcoming_jobs(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->upcoming_jobs: #{e}"
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

