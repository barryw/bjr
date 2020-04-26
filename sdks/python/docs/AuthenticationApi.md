# bjr4py.AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_user**](AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token


# **authenticate_user**
> AuthOut authenticate_user(auth_in=auth_in)

Authenticates a user and returns a token

Authenticates a user and returns a token

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
    api_instance = bjr4py.AuthenticationApi(api_client)
    auth_in = bjr4py.AuthIn() # AuthIn |  (optional)

    try:
        # Authenticates a user and returns a token
        api_response = api_instance.authenticate_user(auth_in=auth_in)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AuthenticationApi->authenticate_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auth_in** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User authenticated successfully |  -  |
**401** | User failed authentication |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

