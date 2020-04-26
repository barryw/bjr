# Bjr4js.StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTags**](StaticApi.md#getTags) | **GET** /static_api/tags | Get tags
[**getTimezones**](StaticApi.md#getTimezones) | **GET** /static_api/timezones | Get timezones
[**getVersion**](StaticApi.md#getVersion) | **GET** /version | Server version



## getTags

> TagMessage getTags()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.StaticApi();
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


## getTimezones

> TimezoneMessage getTimezones()

Get timezones

Get the list of acceptable timezone names.

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.StaticApi();
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


## getVersion

> ServerVersion getVersion()

Server version

The BJR server version

### Example

```javascript
import Bjr4js from 'bjr4js';

let apiInstance = new Bjr4js.StaticApi();
apiInstance.getVersion((error, data, response) => {
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

[**ServerVersion**](ServerVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

