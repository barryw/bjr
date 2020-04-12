# swagger_client.DefaultApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_post**](DefaultApi.md#authenticate_post) | **POST** /authenticate | Authenticates a user and returns a token
[**job_api_get**](DefaultApi.md#job_api_get) | **GET** /job_api | Retrieves jobs
[**job_api_id_delete**](DefaultApi.md#job_api_id_delete) | **DELETE** /job_api/{id} | Deletes a job
[**job_api_id_get**](DefaultApi.md#job_api_id_get) | **GET** /job_api/{id} | Retrieves a single job
[**job_api_id_put**](DefaultApi.md#job_api_id_put) | **PUT** /job_api/{id} | Updates a single job
[**job_api_post**](DefaultApi.md#job_api_post) | **POST** /job_api | Creates a job
[**user_api_get**](DefaultApi.md#user_api_get) | **GET** /user_api | Retrieves users
[**user_api_id_delete**](DefaultApi.md#user_api_id_delete) | **DELETE** /user_api/{id} | Deletes a user
[**user_api_id_get**](DefaultApi.md#user_api_id_get) | **GET** /user_api/{id} | Retrieve a single user
[**user_api_id_put**](DefaultApi.md#user_api_id_put) | **PUT** /user_api/{id} | Update a single user
[**user_api_post**](DefaultApi.md#user_api_post) | **POST** /user_api | Creates a user

# **authenticate_post**
> AuthOut authenticate_post(body=body)

Authenticates a user and returns a token

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.AuthIn() # AuthIn |  (optional)

try:
    # Authenticates a user and returns a token
    api_response = api_instance.authenticate_post(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->authenticate_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_api_get**
> job_api_get()

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
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))

try:
    # Retrieves jobs
    api_instance.job_api_get()
except ApiException as e:
    print("Exception when calling DefaultApi->job_api_get: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_api_id_delete**
> job_api_id_delete(id)

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
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 

try:
    # Deletes a job
    api_instance.job_api_id_delete(id)
except ApiException as e:
    print("Exception when calling DefaultApi->job_api_id_delete: %s\n" % e)
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

# **job_api_id_get**
> job_api_id_get(id)

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
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 

try:
    # Retrieves a single job
    api_instance.job_api_id_get(id)
except ApiException as e:
    print("Exception when calling DefaultApi->job_api_id_get: %s\n" % e)
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

# **job_api_id_put**
> JobOut job_api_id_put(id, body=body)

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
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 
body = swagger_client.JobIn() # JobIn |  (optional)

try:
    # Updates a single job
    api_response = api_instance.job_api_id_put(id, body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->job_api_id_put: %s\n" % e)
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

# **job_api_post**
> JobOut job_api_post(body=body)

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
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
body = swagger_client.JobIn() # JobIn |  (optional)

try:
    # Creates a job
    api_response = api_instance.job_api_post(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->job_api_post: %s\n" % e)
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

# **user_api_get**
> user_api_get()

Retrieves users

Get a list of users

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))

try:
    # Retrieves users
    api_instance.user_api_get()
except ApiException as e:
    print("Exception when calling DefaultApi->user_api_get: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_api_id_delete**
> UserOut user_api_id_delete(id)

Deletes a user

Deletes a user

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 

try:
    # Deletes a user
    api_response = api_instance.user_api_id_delete(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->user_api_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_api_id_get**
> UserOut user_api_id_get(id)

Retrieve a single user

Retrieve a single user

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 

try:
    # Retrieve a single user
    api_response = api_instance.user_api_id_get(id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->user_api_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_api_id_put**
> UserOut user_api_id_put(id, body=body)

Update a single user

Update a single user

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
id = 56 # int | 
body = swagger_client.UserUpdateIn() # UserUpdateIn |  (optional)

try:
    # Update a single user
    api_response = api_instance.user_api_id_put(id, body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->user_api_id_put: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **body** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional] 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_api_post**
> UserOut user_api_post(body=body)

Creates a user

Create a new user

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.DefaultApi(swagger_client.ApiClient(configuration))
body = swagger_client.UserNewIn() # UserNewIn |  (optional)

try:
    # Creates a user
    api_response = api_instance.user_api_post(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->user_api_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserNewIn**](UserNewIn.md)|  | [optional] 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

