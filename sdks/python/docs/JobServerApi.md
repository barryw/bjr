# bjr4py.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_busy_thread_count**](JobServerApi.md#get_busy_thread_count) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**quiesce_node**](JobServerApi.md#quiesce_node) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**stats_by_day**](JobServerApi.md#stats_by_day) | **GET** /job_server_api/daily_job_stats | Job statistics by day
[**stats_by_hour**](JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**stats_by_minute**](JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**stats_by_week**](JobServerApi.md#stats_by_week) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
[**todays_stats**](JobServerApi.md#todays_stats) | **GET** /job_server_api/todays_stats | Todays Stats
[**upcoming_jobs**](JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs


# **get_busy_thread_count**
> BusyThreadCountMessage get_busy_thread_count()

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.busy_thread_count_message import BusyThreadCountMessage
from bjr4py.model.generic_message import GenericMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Retrieve the count of busy workers across worker pods/nodes
        api_response = api_instance.get_busy_thread_count()
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->get_busy_thread_count: %s\n" % e)
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


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Busy thread count stats returned successfully |  -  |
**401** | Not authorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quiesce_node**
> GenericMessage quiesce_node(host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.generic_message import GenericMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    host = "host_example" # str | The hostname of the worker pod/node to quiesce

    # example passing only required values which don't have defaults set
    try:
        # Quiesce a single worker pod/node
        api_response = api_instance.quiesce_node(host)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->quiesce_node: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **str**| The hostname of the worker pod/node to quiesce |

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Worker quiesced successfully |  -  |
**401** | Not authorized |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recent_jobs**
> JobArrayMessage recent_jobs()

List of recent jobs

Get a list of the most recently run jobs

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_array_message import JobArrayMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    count = 1 # int | The number of jobs to return (max 20) (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # List of recent jobs
        api_response = api_instance.recent_jobs(count=count)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->recent_jobs: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| The number of jobs to return (max 20) | [optional]

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Jobs received successfully |  -  |
**406** | Too many jobs specified |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_by_day**
> JobStatMessage stats_by_day()

Job statistics by day

Get daily job statistics

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_stat_message import JobStatMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    start_date = "start_date_example" # str | The start date from which to get daily metrics from (optional)
    end_date = "end_date_example" # str | The end date from which to get daily metrics from (optional)
    per_page = 1 # int |  (optional)
    page = 1 # int |  (optional)
    timezone = "timezone_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Job statistics by day
        api_response = api_instance.stats_by_day(start_date=start_date, end_date=end_date, per_page=per_page, page=page, timezone=timezone)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->stats_by_day: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| The start date from which to get daily metrics from | [optional]
 **end_date** | **str**| The end date from which to get daily metrics from | [optional]
 **per_page** | **int**|  | [optional]
 **page** | **int**|  | [optional]
 **timezone** | **str**|  | [optional]

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Daily stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_by_hour**
> JobStatMessage stats_by_hour()

Job statistics by hour

Get hourly job statistics for the day

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_stat_message import JobStatMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    start_date = "start_date_example" # str | The start date from which to get hourly metrics from (optional)
    end_date = "end_date_example" # str | The end date from which to get hourly metrics from (optional)
    per_page = 1 # int |  (optional)
    page = 1 # int |  (optional)
    timezone = "timezone_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Job statistics by hour
        api_response = api_instance.stats_by_hour(start_date=start_date, end_date=end_date, per_page=per_page, page=page, timezone=timezone)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->stats_by_hour: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| The start date from which to get hourly metrics from | [optional]
 **end_date** | **str**| The end date from which to get hourly metrics from | [optional]
 **per_page** | **int**|  | [optional]
 **page** | **int**|  | [optional]
 **timezone** | **str**|  | [optional]

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Hourly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_by_minute**
> JobStatMessage stats_by_minute()

Job statistics by minute

Get minutely job statistics

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_stat_message import JobStatMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    start_date = "start_date_example" # str | The start date from which to get minutely metrics from (optional)
    end_date = "end_date_example" # str | The end date from which to get minutely metrics from (optional)
    per_page = 1 # int |  (optional)
    page = 1 # int |  (optional)
    timezone = "timezone_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Job statistics by minute
        api_response = api_instance.stats_by_minute(start_date=start_date, end_date=end_date, per_page=per_page, page=page, timezone=timezone)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->stats_by_minute: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| The start date from which to get minutely metrics from | [optional]
 **end_date** | **str**| The end date from which to get minutely metrics from | [optional]
 **per_page** | **int**|  | [optional]
 **page** | **int**|  | [optional]
 **timezone** | **str**|  | [optional]

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Minutely stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_by_week**
> JobStatMessage stats_by_week()

Job statistics by week

Get weekly job statistics

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_stat_message import JobStatMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    start_date = "start_date_example" # str | The start date from which to get weekly metrics from (optional)
    end_date = "end_date_example" # str | The end date from which to get weekly metrics from (optional)
    per_page = 1 # int |  (optional)
    page = 1 # int |  (optional)
    timezone = "timezone_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Job statistics by week
        api_response = api_instance.stats_by_week(start_date=start_date, end_date=end_date, per_page=per_page, page=page, timezone=timezone)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->stats_by_week: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **str**| The start date from which to get weekly metrics from | [optional]
 **end_date** | **str**| The end date from which to get weekly metrics from | [optional]
 **per_page** | **int**|  | [optional]
 **page** | **int**|  | [optional]
 **timezone** | **str**|  | [optional]

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Weekly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **todays_stats**
> TodaysStatsMessage todays_stats()

Todays Stats

Get the high level job statistics for today

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.todays_stats_message import TodaysStatsMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    timezone = "timezone_example" # str |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Todays Stats
        api_response = api_instance.todays_stats(timezone=timezone)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->todays_stats: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezone** | **str**|  | [optional]

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Get the high level job statistics for today |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upcoming_jobs**
> JobArrayMessage upcoming_jobs()

List of upcoming jobs

A list of jobs that are about to execute

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import job_server_api
from bjr4py.model.job_array_message import JobArrayMessage
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = bjr4py.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = job_server_api.JobServerApi(api_client)
    count = 1 # int | The number of jobs to return (max 20) (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # List of upcoming jobs
        api_response = api_instance.upcoming_jobs(count=count)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling JobServerApi->upcoming_jobs: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| The number of jobs to return (max 20) | [optional]

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Upcoming job list returned successfully |  -  |
**406** | Too many jobs specified |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

