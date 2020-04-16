# swagger_client.AuthenticationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_user**](AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token

# **authenticate_user**
> AuthOut authenticate_user(body=body)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.AuthenticationApi()
body = swagger_client.AuthIn() # AuthIn |  (optional)

try:
    # Authenticates a user and returns a token
    api_response = api_instance.authenticate_user(body=body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AuthenticationApi->authenticate_user: %s\n" % e)
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

