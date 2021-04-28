# bjr4py.StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](StaticApi.md#get_tags) | **GET** /tags | Get tags
[**get_timezones**](StaticApi.md#get_timezones) | **GET** /timezones | Get timezones
[**get_version**](StaticApi.md#get_version) | **GET** /version | Server version


# **get_tags**
> TagMessage get_tags()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import static_api
from bjr4py.model.tag_message import TagMessage
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
    api_instance = static_api.StaticApi(api_client)
    per_page = 1 # int |  (optional)
    page = 1 # int |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        # Get tags
        api_response = api_instance.get_tags(per_page=per_page, page=page)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling StaticApi->get_tags: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **per_page** | **int**|  | [optional]
 **page** | **int**|  | [optional]

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
**200** | Tags received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_timezones**
> TimezoneMessage get_timezones()

Get timezones

Get the list of acceptable timezone names.

### Example

* Bearer (JWT) Authentication (bearerAuth):
```python
import time
import bjr4py
from bjr4py.api import static_api
from bjr4py.model.timezone_message import TimezoneMessage
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
    api_instance = static_api.StaticApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Get timezones
        api_response = api_instance.get_timezones()
        pprint(api_response)
    except bjr4py.ApiException as e:
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
import time
import bjr4py
from bjr4py.api import static_api
from bjr4py.model.server_version import ServerVersion
from pprint import pprint
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with bjr4py.ApiClient() as api_client:
    # Create an instance of the API class
    api_instance = static_api.StaticApi(api_client)

    # example, this endpoint has no required or optional parameters
    try:
        # Server version
        api_response = api_instance.get_version()
        pprint(api_response)
    except bjr4py.ApiException as e:
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

