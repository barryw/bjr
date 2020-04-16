# AuthenticationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationApi.md#authenticateUser) | **POST** /authenticate | Authenticates a user and returns a token

<a name="authenticateUser"></a>
# **authenticateUser**
> AuthOut authenticateUser(body)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example
```java
// Import classes:
//import BJR.ApiException;
//import Api.AuthenticationApi;


AuthenticationApi apiInstance = new AuthenticationApi();
AuthIn body = new AuthIn(); // AuthIn | 
try {
    AuthOut result = apiInstance.authenticateUser(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthenticationApi#authenticateUser");
    e.printStackTrace();
}
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

