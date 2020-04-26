# Bjr4js.AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationApi.md#authenticateUser) | **POST** /authenticate | Authenticates a user and returns a token



## authenticateUser

> AuthOut authenticateUser(opts)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example

```javascript
import Bjr4js from 'bjr4js';

let apiInstance = new Bjr4js.AuthenticationApi();
let opts = {
  'authIn': new Bjr4js.AuthIn() // AuthIn | 
};
apiInstance.authenticateUser(opts, (error, data, response) => {
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
 **authIn** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

