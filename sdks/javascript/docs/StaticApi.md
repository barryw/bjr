# BjrApiV1.StaticApi

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
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.StaticApi();
apiInstance.getTags((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.StaticApi();
apiInstance.getTimezones((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

