# BJR.api.AuthenticationApi

## Load the API package
```dart
import 'package:BJR/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationApi.md#authenticateuser) | **post** /authenticate | Authenticates a user and returns a token


# **authenticateUser**
> AuthOut authenticateUser(authIn)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example 
```dart
import 'package:BJR/api.dart';

var api_instance = new AuthenticationApi();
var authIn = new AuthIn(); // AuthIn | 

try { 
    var result = api_instance.authenticateUser(authIn);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->authenticateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authIn** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

