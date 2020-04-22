# BjrApiV1.UsersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createUser) | **POST** /user_api | Creates a user
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /user_api/{id} | Deletes a user
[**getUser**](UsersApi.md#getUser) | **GET** /user_api/{id} | Retrieve a single user
[**getUsers**](UsersApi.md#getUsers) | **GET** /user_api | Retrieves users
[**updateUser**](UsersApi.md#updateUser) | **PUT** /user_api/{id} | Update a single user

<a name="createUser"></a>
# **createUser**
> SingleUserMessage createUser()

Creates a user

Create a new user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.UsersApi();

apiInstance.createUser(, (error, data, response) => {
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
 **body** | [**UserNewIn**](UserNewIn.md)|  | [optional] 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> SingleUserMessage deleteUser(id)

Deletes a user

Deletes a user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.UsersApi();
let id = 56; // Number | 

apiInstance.deleteUser(id, (error, data, response) => {
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
 **id** | **Number**|  | 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SingleUserMessage getUser(id)

Retrieve a single user

Retrieve a single user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.UsersApi();
let id = 56; // Number | 

apiInstance.getUser(id, (error, data, response) => {
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
 **id** | **Number**|  | 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> UserArrayMessage getUsers(opts)

Retrieves users

Get a list of users

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.UsersApi();
let opts = { 
  'perPage': 56, // Number | 
  'page': 56 // Number | 
};
apiInstance.getUsers(opts, (error, data, response) => {
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
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 

### Return type

[**UserArrayMessage**](UserArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateUser"></a>
# **updateUser**
> SingleUserMessage updateUser(id)

Update a single user

Update a single user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.UsersApi();
let id = 56; // Number | 

apiInstance.updateUser(id, (error, data, response) => {
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
 **id** | **Number**|  | 
 **body** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional] 

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

