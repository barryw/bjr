# BJR::JobsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_job**](JobsApi.md#create_job) | **POST** /job_api | Creates a job |
| [**delete_job**](JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job |
| [**get_job**](JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job |
| [**get_job_runs**](JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job |
| [**get_jobs**](JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs |
| [**job_occurrences**](JobsApi.md#job_occurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences |
| [**run_job_now**](JobsApi.md#run_job_now) | **POST** /job_api/{id}/run_now | Run a job now |
| [**update_job**](JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job |


## create_job

> <SingleJobMessage> create_job(opts)

Creates a job

Creates a job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
opts = {
  job_in: BJR::JobIn.new({name: 'name_example', cron: 'cron_example', command: 'command_example'}) # JobIn | 
}

begin
  # Creates a job
  result = api_instance.create_job(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->create_job: #{e}"
end
```

#### Using the create_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleJobMessage>, Integer, Hash)> create_job_with_http_info(opts)

```ruby
begin
  # Creates a job
  data, status_code, headers = api_instance.create_job_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleJobMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->create_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_in** | [**JobIn**](JobIn.md) |  | [optional] |

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_job

> <SingleJobMessage> delete_job(id)

Deletes a job

Deletes a job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | 

begin
  # Deletes a job
  result = api_instance.delete_job(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->delete_job: #{e}"
end
```

#### Using the delete_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleJobMessage>, Integer, Hash)> delete_job_with_http_info(id)

```ruby
begin
  # Deletes a job
  data, status_code, headers = api_instance.delete_job_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleJobMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->delete_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job

> <SingleJobMessage> get_job(id)

Retrieves a single job

Retrieves a single job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | 

begin
  # Retrieves a single job
  result = api_instance.get_job(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleJobMessage>, Integer, Hash)> get_job_with_http_info(id)

```ruby
begin
  # Retrieves a single job
  data, status_code, headers = api_instance.get_job_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleJobMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_runs

> <JobRunArrayMessage> get_job_runs(id, opts)

Retrieve the runs for a job

Retrieve the runs for a job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | 
opts = {
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  succeeded: true, # Boolean | 
  start_date: 'start_date_example', # String | 
  end_date: 'end_date_example', # String | 
  timezone: 'timezone_example' # String | 
}

begin
  # Retrieve the runs for a job
  result = api_instance.get_job_runs(id, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_job_runs: #{e}"
end
```

#### Using the get_job_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobRunArrayMessage>, Integer, Hash)> get_job_runs_with_http_info(id, opts)

```ruby
begin
  # Retrieve the runs for a job
  data, status_code, headers = api_instance.get_job_runs_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobRunArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_job_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **succeeded** | **Boolean** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jobs

> <JobArrayMessage> get_jobs(opts)

Retrieves jobs

Retrieves jobs

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
opts = {
  expression: 'expression_example', # String | A search expression to filter jobs.
  timezone: 'timezone_example', # String | 
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Retrieves jobs
  result = api_instance.get_jobs(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_jobs: #{e}"
end
```

#### Using the get_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobArrayMessage>, Integer, Hash)> get_jobs_with_http_info(opts)

```ruby
begin
  # Retrieves jobs
  data, status_code, headers = api_instance.get_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->get_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expression** | **String** | A search expression to filter jobs. | [optional] |
| **timezone** | **String** |  | [optional] |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_occurrences

> <OccurrenceMessage> job_occurrences(id, end_date, opts)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | The id of the job to retrieve occurrences for
end_date = 'end_date_example' # String | The date to retrieve occurrences up to
opts = {
  per_page: 56, # Integer | 
  page: 56, # Integer | 
  timezone: 'timezone_example' # String | 
}

begin
  # Upcoming job occurrences
  result = api_instance.job_occurrences(id, end_date, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->job_occurrences: #{e}"
end
```

#### Using the job_occurrences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OccurrenceMessage>, Integer, Hash)> job_occurrences_with_http_info(id, end_date, opts)

```ruby
begin
  # Upcoming job occurrences
  data, status_code, headers = api_instance.job_occurrences_with_http_info(id, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OccurrenceMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->job_occurrences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the job to retrieve occurrences for |  |
| **end_date** | **String** | The date to retrieve occurrences up to |  |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **timezone** | **String** |  | [optional] |

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_job_now

> run_job_now(id)

Run a job now

Queues a job to run now

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | The id of the job to execute now

begin
  # Run a job now
  api_instance.run_job_now(id)
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->run_job_now: #{e}"
end
```

#### Using the run_job_now_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> run_job_now_with_http_info(id)

```ruby
begin
  # Run a job now
  data, status_code, headers = api_instance.run_job_now_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->run_job_now_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the job to execute now |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_job

> <SingleJobMessage> update_job(id, opts)

Updates a single job

Updates a single job

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::JobsApi.new
id = 56 # Integer | 
opts = {
  job_in: BJR::JobIn.new({name: 'name_example', cron: 'cron_example', command: 'command_example'}) # JobIn | 
}

begin
  # Updates a single job
  result = api_instance.update_job(id, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->update_job: #{e}"
end
```

#### Using the update_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleJobMessage>, Integer, Hash)> update_job_with_http_info(id, opts)

```ruby
begin
  # Updates a single job
  data, status_code, headers = api_instance.update_job_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleJobMessage>
rescue BJR::ApiError => e
  puts "Error when calling JobsApi->update_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **job_in** | [**JobIn**](JobIn.md) |  | [optional] |

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

