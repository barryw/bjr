# BJR::JobServerApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_busy_thread_count**](JobServerApi.md#get_busy_thread_count) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes |
| [**quiesce_node**](JobServerApi.md#quiesce_node) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node |
| [**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs |
| [**stats_by_day**](JobServerApi.md#stats_by_day) | **GET** /job_server_api/daily_job_stats | Job statistics by day |
| [**stats_by_hour**](JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour |
| [**stats_by_minute**](JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute |
| [**stats_by_week**](JobServerApi.md#stats_by_week) | **GET** /job_server_api/weekly_job_stats | Job statistics by week |
| [**todays_stats**](JobServerApi.md#todays_stats) | **GET** /job_server_api/todays_stats | Todays Stats |
| [**upcoming_jobs**](JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs |


## get_busy_thread_count

> <BusyThreadCountMessage> get_busy_thread_count

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobServerApi.new

begin
  # Retrieve the count of busy workers across worker pods/nodes
  result = api_instance.get_busy_thread_count
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->get_busy_thread_count: #{e}"
end
```

#### Using the get_busy_thread_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusyThreadCountMessage>, Integer, Hash)> get_busy_thread_count_with_http_info

```ruby
begin
  # Retrieve the count of busy workers across worker pods/nodes
  data, status_code, headers = api_instance.get_busy_thread_count_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusyThreadCountMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->get_busy_thread_count_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BusyThreadCountMessage**](BusyThreadCountMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quiesce_node

> <GenericMessage> quiesce_node(host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobServerApi.new
host = 'host_example' # String | The hostname of the worker pod/node to quiesce

begin
  # Quiesce a single worker pod/node
  result = api_instance.quiesce_node(host)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->quiesce_node: #{e}"
end
```

#### Using the quiesce_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenericMessage>, Integer, Hash)> quiesce_node_with_http_info(host)

```ruby
begin
  # Quiesce a single worker pod/node
  data, status_code, headers = api_instance.quiesce_node_with_http_info(host)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenericMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->quiesce_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | The hostname of the worker pod/node to quiesce |  |

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recent_jobs

> <JobArrayMessage> recent_jobs(opts)

List of recent jobs

Get a list of the most recently run jobs

### Examples

```ruby
require 'time'
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
  # List of recent jobs
  result = api_instance.recent_jobs(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->recent_jobs: #{e}"
end
```

#### Using the recent_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobArrayMessage>, Integer, Hash)> recent_jobs_with_http_info(opts)

```ruby
begin
  # List of recent jobs
  data, status_code, headers = api_instance.recent_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->recent_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of jobs to return (max 20) | [optional] |

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_day

> <JobStatMessage> stats_by_day(opts)

Job statistics by day

Get daily job statistics

### Examples

```ruby
require 'time'
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
  # Job statistics by day
  result = api_instance.stats_by_day(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_day: #{e}"
end
```

#### Using the stats_by_day_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobStatMessage>, Integer, Hash)> stats_by_day_with_http_info(opts)

```ruby
begin
  # Job statistics by day
  data, status_code, headers = api_instance.stats_by_day_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobStatMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_day_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date from which to get daily metrics from | [optional] |
| **end_date** | **String** | The end date from which to get daily metrics from | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_hour

> <JobStatMessage> stats_by_hour(opts)

Job statistics by hour

Get hourly job statistics for the day

### Examples

```ruby
require 'time'
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
  # Job statistics by hour
  result = api_instance.stats_by_hour(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_hour: #{e}"
end
```

#### Using the stats_by_hour_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobStatMessage>, Integer, Hash)> stats_by_hour_with_http_info(opts)

```ruby
begin
  # Job statistics by hour
  data, status_code, headers = api_instance.stats_by_hour_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobStatMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_hour_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date from which to get hourly metrics from | [optional] |
| **end_date** | **String** | The end date from which to get hourly metrics from | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_minute

> <JobStatMessage> stats_by_minute(opts)

Job statistics by minute

Get minutely job statistics

### Examples

```ruby
require 'time'
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
  # Job statistics by minute
  result = api_instance.stats_by_minute(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_minute: #{e}"
end
```

#### Using the stats_by_minute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobStatMessage>, Integer, Hash)> stats_by_minute_with_http_info(opts)

```ruby
begin
  # Job statistics by minute
  data, status_code, headers = api_instance.stats_by_minute_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobStatMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_minute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date from which to get minutely metrics from | [optional] |
| **end_date** | **String** | The end date from which to get minutely metrics from | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stats_by_week

> <JobStatMessage> stats_by_week(opts)

Job statistics by week

Get weekly job statistics

### Examples

```ruby
require 'time'
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
  # Job statistics by week
  result = api_instance.stats_by_week(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_week: #{e}"
end
```

#### Using the stats_by_week_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobStatMessage>, Integer, Hash)> stats_by_week_with_http_info(opts)

```ruby
begin
  # Job statistics by week
  data, status_code, headers = api_instance.stats_by_week_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobStatMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->stats_by_week_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | The start date from which to get weekly metrics from | [optional] |
| **end_date** | **String** | The end date from which to get weekly metrics from | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## todays_stats

> <TodaysStatsMessage> todays_stats(opts)

Todays Stats

Get the high level job statistics for today

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobServerApi.new
opts = {
  timezone: 'timezone_example' # String | 
}

begin
  # Todays Stats
  result = api_instance.todays_stats(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->todays_stats: #{e}"
end
```

#### Using the todays_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TodaysStatsMessage>, Integer, Hash)> todays_stats_with_http_info(opts)

```ruby
begin
  # Todays Stats
  data, status_code, headers = api_instance.todays_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TodaysStatsMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->todays_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timezone** | **String** |  | [optional] |

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upcoming_jobs

> <JobArrayMessage> upcoming_jobs(opts)

List of upcoming jobs

A list of jobs that are about to execute

### Examples

```ruby
require 'time'
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
  # List of upcoming jobs
  result = api_instance.upcoming_jobs(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->upcoming_jobs: #{e}"
end
```

#### Using the upcoming_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobArrayMessage>, Integer, Hash)> upcoming_jobs_with_http_info(opts)

```ruby
begin
  # List of upcoming jobs
  data, status_code, headers = api_instance.upcoming_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobServerApi->upcoming_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | The number of jobs to return (max 20) | [optional] |

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

