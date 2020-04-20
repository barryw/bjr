# swagger_client.StaticApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](StaticApi.md#get_tags) | **GET** /static_api/timezones | Get timezones
[**get_tags_0**](StaticApi.md#get_tags_0) | **GET** /static_api/tags | Get tags

# **get_tags**
> StringArray get_tags()

Get timezones

Get the list of acceptable timezone names.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.StaticApi(swagger_client.ApiClient(configuration))

try:
    # Get timezones
    api_response = api_instance.get_tags()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StaticApi->get_tags: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StringArray**](StringArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_tags_0**
> TagArray get_tags_0()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.StaticApi(swagger_client.ApiClient(configuration))

try:
    # Get tags
    api_response = api_instance.get_tags_0()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling StaticApi->get_tags_0: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TagArray**](TagArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

