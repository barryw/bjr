# bjr4py.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recent_jobs**](JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**stats_by_hour**](JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**stats_by_minute**](JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**upcoming_jobs**](JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs


# **recent_jobs**
> JobArrayMessage recent_jobs(count=count)

List of recent jobs

Get a list of the most recently run jobs

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
from __future__ import print_function
import time
import bjr4py
from bjr4py.rest import ApiException
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
    api_instance = bjr4py.JobServerApi(api_client)
    count = 56 # int | The number of jobs to return (max 20) (optional)

    try:
        # List of recent jobs
        api_response = api_instance.recent_jobs(count=count)
        pprint(api_response)
    except ApiException as e:
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

# **stats_by_hour**
> JobStatMessage stats_by_hour()

Job statistics by hour

Get hourly job statistics for the day

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
from __future__ import print_function
import time
import bjr4py
from bjr4py.rest import ApiException
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
    api_instance = bjr4py.JobServerApi(api_client)
    
    try:
        # Job statistics by hour
        api_response = api_instance.stats_by_hour()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobServerApi->stats_by_hour: %s\n" % e)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Hourly stats received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stats_by_minute**
> JobStatMessage stats_by_minute(count=count)

Job statistics by minute

Get minutely job statistics

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
from __future__ import print_function
import time
import bjr4py
from bjr4py.rest import ApiException
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
    api_instance = bjr4py.JobServerApi(api_client)
    count = 56 # int | The number of stats to return (max 60) (optional)

    try:
        # Job statistics by minute
        api_response = api_instance.stats_by_minute(count=count)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobServerApi->stats_by_minute: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| The number of stats to return (max 60) | [optional] 

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
**200** | Minutely stats received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upcoming_jobs**
> JobArrayMessage upcoming_jobs(count=count)

List of upcoming jobs

A list of jobs that are about to execute

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
from __future__ import print_function
import time
import bjr4py
from bjr4py.rest import ApiException
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
    api_instance = bjr4py.JobServerApi(api_client)
    count = 56 # int | The number of jobs to return (max 20) (optional)

    try:
        # List of upcoming jobs
        api_response = api_instance.upcoming_jobs(count=count)
        pprint(api_response)
    except ApiException as e:
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

