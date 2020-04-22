# StaticApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTags**](StaticApi.md#getTags) | **GET** /static_api/tags | Get tags
[**getTimezones**](StaticApi.md#getTimezones) | **GET** /static_api/timezones | Get timezones

<a name="getTags"></a>
# **getTags**
> TagMessage getTags()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.StaticApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


StaticApi apiInstance = new StaticApi();
try {
    TagMessage result = apiInstance.getTags();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StaticApi#getTags");
    e.printStackTrace();
}
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

<a name="getTimezones"></a>
# **getTimezones**
> TimezoneMessage getTimezones()

Get timezones

Get the list of acceptable timezone names.

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.StaticApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


StaticApi apiInstance = new StaticApi();
try {
    TimezoneMessage result = apiInstance.getTimezones();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling StaticApi#getTimezones");
    e.printStackTrace();
}
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

