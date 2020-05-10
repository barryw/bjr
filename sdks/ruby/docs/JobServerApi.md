# BJR::JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**stats_by_day**](JobServerApi.md#stats_by_day) | **GET** /job_server_api/daily_job_stats | Job statistics by day
[**stats_by_hour**](JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**stats_by_minute**](JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**stats_by_week**](JobServerApi.md#stats_by_week) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
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


## stats_by_day

> JobStatMessage stats_by_day(opts)

Job statistics by day

Get daily job statistics

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
  start_date: 'start_date_example', # String | The start date from which to get daily metrics from
  end_date: 'end_date_example', # String | The end date from which to get daily metrics from
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  timezone: 'timezone_example' # String | 
}

begin
  #Job statistics by day
  result = api_instance.stats_by_day(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->stats_by_day: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| The start date from which to get daily metrics from | [optional] 
 **end_date** | **String**| The end date from which to get daily metrics from | [optional] 
 **per_page** | **Integer**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_hour

> JobStatMessage stats_by_hour(opts)

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
opts = {
  start_date: 'start_date_example', # String | The start date from which to get hourly metrics from
  end_date: 'end_date_example', # String | The end date from which to get hourly metrics from
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  timezone: 'timezone_example' # String | 
}

begin
  #Job statistics by hour
  result = api_instance.stats_by_hour(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->stats_by_hour: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| The start date from which to get hourly metrics from | [optional] 
 **end_date** | **String**| The end date from which to get hourly metrics from | [optional] 
 **per_page** | **Integer**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **timezone** | **String**|  | [optional] 

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
  start_date: 'start_date_example', # String | The start date from which to get minutely metrics from
  end_date: 'end_date_example', # String | The end date from which to get minutely metrics from
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  timezone: 'timezone_example' # String | 
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
 **start_date** | **String**| The start date from which to get minutely metrics from | [optional] 
 **end_date** | **String**| The end date from which to get minutely metrics from | [optional] 
 **per_page** | **Integer**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_week

> JobStatMessage stats_by_week(opts)

Job statistics by week

Get weekly job statistics

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
  start_date: 'start_date_example', # String | The start date from which to get weekly metrics from
  end_date: 'end_date_example', # String | The end date from which to get weekly metrics from
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  timezone: 'timezone_example' # String | 
}

begin
  #Job statistics by week
  result = api_instance.stats_by_week(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling JobServerApi->stats_by_week: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| The start date from which to get weekly metrics from | [optional] 
 **end_date** | **String**| The end date from which to get weekly metrics from | [optional] 
 **per_page** | **Integer**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **timezone** | **String**|  | [optional] 

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

