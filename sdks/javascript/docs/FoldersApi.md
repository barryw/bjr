# Bjr4js.FoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFolder**](FoldersApi.md#createFolder) | **POST** /folder_api | Create a new Folder
[**deleteFolder**](FoldersApi.md#deleteFolder) | **DELETE** /folder_api/{id} | Delete an existing folder
[**getFolder**](FoldersApi.md#getFolder) | **GET** /folder_api/{id} | Return a single folder
[**getFolderJobs**](FoldersApi.md#getFolderJobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder
[**getFolders**](FoldersApi.md#getFolders) | **GET** /folder_api | Return paginated list of all folders
[**updateFolder**](FoldersApi.md#updateFolder) | **PUT** /folder_api/{id} | Update an existing folder



## createFolder

> SingleFolderMessage createFolder(name, expression)

Create a new Folder

Create a new Folder

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let name = "name_example"; // String | 
let expression = "expression_example"; // String | 
apiInstance.createFolder(name, expression, (error, data, response) => {
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
 **name** | **String**|  | 
 **expression** | **String**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## deleteFolder

> SingleFolderMessage deleteFolder(id)

Delete an existing folder

Delete an existing folder

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let id = 56; // Number | 
apiInstance.deleteFolder(id, (error, data, response) => {
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

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getFolder

> SingleFolderMessage getFolder(id)

Return a single folder

Return a single folder

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let id = 56; // Number | 
apiInstance.getFolder(id, (error, data, response) => {
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

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getFolderJobs

> JobArrayMessage getFolderJobs(id, opts)

Return list of jobs in a folder

Return list of jobs in a folder

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let id = 56; // Number | 
let opts = {
  'perPage': 56, // Number | 
  'page': 56 // Number | 
};
apiInstance.getFolderJobs(id, opts, (error, data, response) => {
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
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getFolders

> FolderArrayMessage getFolders(opts)

Return paginated list of all folders

Return paginated list of all folders

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let opts = {
  'perPage': 56, // Number | 
  'page': 56 // Number | 
};
apiInstance.getFolders(opts, (error, data, response) => {
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

[**FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateFolder

> SingleFolderMessage updateFolder(id, opts)

Update an existing folder

Update an existing folder

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.FoldersApi();
let id = 56; // Number | 
let opts = {
  'name': "name_example", // String | 
  'expression': "expression_example" // String | 
};
apiInstance.updateFolder(id, opts, (error, data, response) => {
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
 **name** | **String**|  | [optional] 
 **expression** | **String**|  | [optional] 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

