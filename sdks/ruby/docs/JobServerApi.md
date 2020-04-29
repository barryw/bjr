# BJR::JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
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

