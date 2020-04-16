# BjrApiV1.AuthenticationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationApi.md#authenticateUser) | **POST** /authenticate | Authenticates a user and returns a token

<a name="authenticateUser"></a>
# **authenticateUser**
> AuthOut authenticateUser()

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';

let apiInstance = new BjrApiV1.AuthenticationApi();

apiInstance.authenticateUser(, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

