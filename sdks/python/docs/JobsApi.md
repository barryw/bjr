# swagger_client.JobsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_job**](JobsApi.md#create_job) | **POST** /job_api | Creates a job
[**delete_job**](JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job
[**get_job**](JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job
[**get_job_runs**](JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**get_jobs**](JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs
[**update_job**](JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job

# **create_job**
> JobOut create_job(body=body)

Creates a job

Creates a job

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
body = swagger_client.JobIn() # JobIn |  (optional)

try:
    # Creates a job
    api_response = api_instance.create_job(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling JobsApi->create_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_job**
> delete_job(id)

Deletes a job

Deletes a job

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
id = 56 # int | 

try:
    # Deletes a job
    api_instance.delete_job(id)
except ApiException as e:
    print("Exception when calling JobsApi->delete_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> SingleJob get_job(id)

Retrieves a single job

Retrieves a single job

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
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

[**SingleJob**](SingleJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_runs**
> JobRunArray get_job_runs(id, per_page=per_page, page=page)

Retrieve the runs for a job

Retrieve the runs for a job

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
id = 56 # int | 
per_page = 56 # int |  (optional)
page = 56 # int |  (optional)

try:
    # Retrieve the runs for a job
    api_response = api_instance.get_job_runs(id, per_page=per_page, page=page)
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

### Return type

[**JobRunArray**](JobRunArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jobs**
> JobArray get_jobs(tags=tags, incexc=incexc, start_date=start_date, end_date=end_date, per_page=per_page, page=page)

Retrieves jobs

Retrieves jobs

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
tags = 'tags_example' # str | Specify a comma-separated list of tags to search jobs by. (optional)
incexc = 'incexc_example' # str |  (optional)
start_date = 'start_date_example' # str | Specify a start date to search jobs by. (optional)
end_date = 'end_date_example' # str | Specify an end date to search jobs by. (optional)
per_page = 56 # int |  (optional)
page = 56 # int |  (optional)

try:
    # Retrieves jobs
    api_response = api_instance.get_jobs(tags=tags, incexc=incexc, start_date=start_date, end_date=end_date, per_page=per_page, page=page)
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
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**JobArray**](JobArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_job**
> JobOut update_job(id, body=body)

Updates a single job

Updates a single job

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.JobsApi(swagger_client.ApiClient(configuration))
id = 56 # int | 
body = swagger_client.JobIn() # JobIn |  (optional)

try:
    # Updates a single job
    api_response = api_instance.update_job(id, body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling JobsApi->update_job: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

