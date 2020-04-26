# bjr4py.UsersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **POST** /user_api | Creates a user
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /user_api/{id} | Deletes a user
[**get_user**](UsersApi.md#get_user) | **GET** /user_api/{id} | Retrieve a single user
[**get_users**](UsersApi.md#get_users) | **GET** /user_api | Retrieves users
[**update_user**](UsersApi.md#update_user) | **PUT** /user_api/{id} | Update a single user


# **create_user**
> SingleUserMessage create_user(user_new_in=user_new_in)

Creates a user

Create a new user

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
    api_instance = bjr4py.UsersApi(api_client)
    user_new_in = bjr4py.UserNewIn() # UserNewIn |  (optional)

    try:
        # Creates a user
        api_response = api_instance.create_user(user_new_in=user_new_in)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling UsersApi->create_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_new_in** | [**UserNewIn**](UserNewIn.md)|  | [optional] 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | User created successfully |  -  |
**403** | Username already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> SingleUserMessage delete_user(id)

Deletes a user

Deletes a user

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
    api_instance = bjr4py.UsersApi(api_client)
    id = 56 # int | 

    try:
        # Deletes a user
        api_response = api_instance.delete_user(id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling UsersApi->delete_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User deleted successfully |  -  |
**403** | You cannot delete yourself. |  -  |
**404** | The user with that id could not be found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> SingleUserMessage get_user(id)

Retrieve a single user

Retrieve a single user

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
    api_instance = bjr4py.UsersApi(api_client)
    id = 56 # int | 

    try:
        # Retrieve a single user
        api_response = api_instance.get_user(id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling UsersApi->get_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The user was returned successfully. |  -  |
**404** | The user with that id could not be found. |  -  |
**401** | Your token is invalid or expired |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> UserArrayMessage get_users(per_page=per_page, page=page)

Retrieves users

Get a list of users

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
    api_instance = bjr4py.UsersApi(api_client)
    per_page = 56 # int |  (optional)
page = 56 # int |  (optional)

    try:
        # Retrieves users
        api_response = api_instance.get_users(per_page=per_page, page=page)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling UsersApi->get_users: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**UserArrayMessage**](UserArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Users found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> SingleUserMessage update_user(id, user_update_in=user_update_in)

Update a single user

Update a single user

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
    api_instance = bjr4py.UsersApi(api_client)
    id = 56 # int | 
user_update_in = bjr4py.UserUpdateIn() # UserUpdateIn |  (optional)

    try:
        # Update a single user
        api_response = api_instance.update_user(id, user_update_in=user_update_in)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling UsersApi->update_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **user_update_in** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional] 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The user was returned successfully. |  -  |
**403** | The passwords did not match |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

