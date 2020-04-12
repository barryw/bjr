# BjrApiV1.DefaultApi

All URIs are relative to *http://{defaultHost}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticatePost**](DefaultApi.md#authenticatePost) | **POST** /authenticate | Authenticates a user and returns a token
[**jobApiGet**](DefaultApi.md#jobApiGet) | **GET** /job_api | Retrieves jobs
[**jobApiIdDelete**](DefaultApi.md#jobApiIdDelete) | **DELETE** /job_api/{id} | Deletes a job
[**jobApiIdGet**](DefaultApi.md#jobApiIdGet) | **GET** /job_api/{id} | Retrieves a single job
[**jobApiIdPut**](DefaultApi.md#jobApiIdPut) | **PUT** /job_api/{id} | Updates a single job
[**jobApiPost**](DefaultApi.md#jobApiPost) | **POST** /job_api | Creates a job
[**userApiGet**](DefaultApi.md#userApiGet) | **GET** /user_api | Retrieves users
[**userApiIdDelete**](DefaultApi.md#userApiIdDelete) | **DELETE** /user_api/{id} | Deletes a user
[**userApiIdGet**](DefaultApi.md#userApiIdGet) | **GET** /user_api/{id} | Retrieve a single user
[**userApiIdPut**](DefaultApi.md#userApiIdPut) | **PUT** /user_api/{id} | Update a single user
[**userApiPost**](DefaultApi.md#userApiPost) | **POST** /user_api | Creates a user

<a name="authenticatePost"></a>
# **authenticatePost**
> AuthOut authenticatePost()

Authenticates a user and returns a token

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';

let apiInstance = new BjrApiV1.DefaultApi();

apiInstance.authenticatePost(, (error, data, response) => {
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

<a name="jobApiGet"></a>
# **jobApiGet**
> jobApiGet()

Retrieves jobs

Retrieves jobs

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
apiInstance.jobApiGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="jobApiIdDelete"></a>
# **jobApiIdDelete**
> jobApiIdDelete(id)

Deletes a job

Deletes a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.jobApiIdDelete(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="jobApiIdGet"></a>
# **jobApiIdGet**
> jobApiIdGet(id)

Retrieves a single job

Retrieves a single job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.jobApiIdGet(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**|  | 

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="jobApiIdPut"></a>
# **jobApiIdPut**
> Out jobApiIdPut(id)

Updates a single job

Updates a single job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.jobApiIdPut(id, (error, data, response) => {
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
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="jobApiPost"></a>
# **jobApiPost**
> Out jobApiPost()

Creates a job

Creates a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();

apiInstance.jobApiPost(, (error, data, response) => {
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
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="userApiGet"></a>
# **userApiGet**
> userApiGet()

Retrieves users

Get a list of users

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
apiInstance.userApiGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="userApiIdDelete"></a>
# **userApiIdDelete**
> Out userApiIdDelete(id)

Deletes a user

Deletes a user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.userApiIdDelete(id, (error, data, response) => {
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

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="userApiIdGet"></a>
# **userApiIdGet**
> Out userApiIdGet(id)

Retrieve a single user

Retrieve a single user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.userApiIdGet(id, (error, data, response) => {
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

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="userApiIdPut"></a>
# **userApiIdPut**
> Out userApiIdPut(id)

Update a single user

Update a single user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();
let id = 56; // Number | 

apiInstance.userApiIdPut(id, (error, data, response) => {
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

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="userApiPost"></a>
# **userApiPost**
> Out userApiPost()

Creates a user

Create a new user

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.DefaultApi();

apiInstance.userApiPost(, (error, data, response) => {
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

[**Out**](Out.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

