# bjr4py.JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_job**](JobsApi.md#create_job) | **POST** /job_api | Creates a job
[**delete_job**](JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job
[**get_job**](JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job
[**get_job_runs**](JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**get_jobs**](JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs
[**job_occurrences**](JobsApi.md#job_occurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**run_job_now**](JobsApi.md#run_job_now) | **POST** /job_api/{id}/run_now | Run a job now
[**update_job**](JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job


# **create_job**
> SingleJobMessage create_job(job_in=job_in)

Creates a job

Creates a job

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
    api_instance = bjr4py.JobsApi(api_client)
    job_in = bjr4py.JobIn() # JobIn |  (optional)

    try:
        # Creates a job
        api_response = api_instance.create_job(job_in=job_in)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->create_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_in** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Job created successfully. |  -  |
**400** | Invalid timezone name. |  -  |
**403** | A job with this name already exists. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_job**
> SingleJobMessage delete_job(id)

Deletes a job

Deletes a job

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | 

    try:
        # Deletes a job
        api_response = api_instance.delete_job(id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->delete_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job %{id} deleted successfully. |  -  |
**409** | Job &#39;%{id}&#39; cannot be deleted because it&#39;s running. Try disabling it first. |  -  |
**404** | Job not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> SingleJobMessage get_job(id)

Retrieves a single job

Retrieves a single job

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | 

    try:
        # Retrieves a single job
        api_response = api_instance.get_job(id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->get_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job returned successfully |  -  |
**404** | Job not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_runs**
> JobRunArrayMessage get_job_runs(id, per_page=per_page, page=page, succeeded=succeeded, start_date=start_date, end_date=end_date, timezone=timezone)

Retrieve the runs for a job

Retrieve the runs for a job

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | 
per_page = 56 # int |  (optional)
page = 56 # int |  (optional)
succeeded = True # bool |  (optional)
start_date = 'start_date_example' # str |  (optional)
end_date = 'end_date_example' # str |  (optional)
timezone = 'timezone_example' # str |  (optional)

    try:
        # Retrieve the runs for a job
        api_response = api_instance.get_job_runs(id, per_page=per_page, page=page, succeeded=succeeded, start_date=start_date, end_date=end_date, timezone=timezone)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->get_job_runs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **succeeded** | **bool**|  | [optional] 
 **start_date** | **str**|  | [optional] 
 **end_date** | **str**|  | [optional] 
 **timezone** | **str**|  | [optional] 

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Runs received successfully. |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jobs**
> JobArrayMessage get_jobs(tags=tags, incexc=incexc, start_date=start_date, end_date=end_date, enabled=enabled, succeeded=succeeded, running=running, name=name, timezone=timezone, per_page=per_page, page=page)

Retrieves jobs

Retrieves jobs

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
    api_instance = bjr4py.JobsApi(api_client)
    tags = 'tags_example' # str | Specify a comma-separated list of tags to search jobs by. (optional)
incexc = 'incexc_example' # str |  (optional)
start_date = 'start_date_example' # str | Specify a start date to search jobs by. (optional)
end_date = 'end_date_example' # str | Specify an end date to search jobs by. (optional)
enabled = True # bool | Search on whether a job is enabled or not. (optional)
succeeded = True # bool | Search on whether a job's last run was successful or not. (optional)
running = True # bool | Search on whether a job is currently running or not. (optional)
name = 'name_example' # str | Search on a job's name. (optional)
timezone = 'timezone_example' # str |  (optional)
per_page = 56 # int |  (optional)
page = 56 # int |  (optional)

    try:
        # Retrieves jobs
        api_response = api_instance.get_jobs(tags=tags, incexc=incexc, start_date=start_date, end_date=end_date, enabled=enabled, succeeded=succeeded, running=running, name=name, timezone=timezone, per_page=per_page, page=page)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->get_jobs: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | **str**| Specify a comma-separated list of tags to search jobs by. | [optional] 
 **incexc** | **str**|  | [optional] 
 **start_date** | **str**| Specify a start date to search jobs by. | [optional] 
 **end_date** | **str**| Specify an end date to search jobs by. | [optional] 
 **enabled** | **bool**| Search on whether a job is enabled or not. | [optional] 
 **succeeded** | **bool**| Search on whether a job&#39;s last run was successful or not. | [optional] 
 **running** | **bool**| Search on whether a job is currently running or not. | [optional] 
 **name** | **str**| Search on a job&#39;s name. | [optional] 
 **timezone** | **str**|  | [optional] 
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

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
**200** | Jobs returned successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_occurrences**
> OccurrenceMessage job_occurrences(id, end_date, per_page=per_page, page=page, timezone=timezone)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | The id of the job to retrieve occurrences for
end_date = 'end_date_example' # str | The date to retrieve occurrences up to
per_page = 56 # int |  (optional)
page = 56 # int |  (optional)
timezone = 'timezone_example' # str |  (optional)

    try:
        # Upcoming job occurrences
        api_response = api_instance.job_occurrences(id, end_date, per_page=per_page, page=page, timezone=timezone)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->job_occurrences: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job to retrieve occurrences for | 
 **end_date** | **str**| The date to retrieve occurrences up to | 
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **str**|  | [optional] 

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Occurrences received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |
**404** | Job not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **run_job_now**
> run_job_now(id)

Run a job now

Queues a job to run now

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | The id of the job to execute now

    try:
        # Run a job now
        api_instance.run_job_now(id)
    except ApiException as e:
        print("Exception when calling JobsApi->run_job_now: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job to execute now | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job queued to execute |  -  |
**404** | Job not found |  -  |
**409** | Job is already running |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_job**
> SingleJobMessage update_job(id, job_in=job_in)

Updates a single job

Updates a single job

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
    api_instance = bjr4py.JobsApi(api_client)
    id = 56 # int | 
job_in = bjr4py.JobIn() # JobIn |  (optional)

    try:
        # Updates a single job
        api_response = api_instance.update_job(id, job_in=job_in)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling JobsApi->update_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **job_in** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job updated successfully. |  -  |
**403** | Job could not be updated. |  -  |
**404** | Job not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

