# bjr4py.StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](StaticApi.md#get_tags) | **GET** /static_api/tags | Get tags
[**get_timezones**](StaticApi.md#get_timezones) | **GET** /static_api/timezones | Get timezones
[**get_version**](StaticApi.md#get_version) | **GET** /version | Server version


# **get_tags**
> TagMessage get_tags()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

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
    api_instance = bjr4py.StaticApi(api_client)
    
    try:
        # Get tags
        api_response = api_instance.get_tags()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling StaticApi->get_tags: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tags received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_timezones**
> TimezoneMessage get_timezones()

Get timezones

Get the list of acceptable timezone names.

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
    api_instance = bjr4py.StaticApi(api_client)
    
    try:
        # Get timezones
        api_response = api_instance.get_timezones()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling StaticApi->get_timezones: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimezoneMessage**](TimezoneMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Timezones received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_version**
> ServerVersion get_version()

Server version

The BJR server version

### Example

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


# Enter a context with an instance of the API client
with bjr4py.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = bjr4py.StaticApi(api_client)
    
    try:
        # Server version
        api_response = api_instance.get_version()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling StaticApi->get_version: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerVersion**](ServerVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Server version received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

