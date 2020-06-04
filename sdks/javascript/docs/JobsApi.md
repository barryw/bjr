# Bjr4js.JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **POST** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **DELETE** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **GET** /job_api/{id} | Retrieves a single job
[**getJobRuns**](JobsApi.md#getJobRuns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**getJobs**](JobsApi.md#getJobs) | **GET** /job_api | Retrieves jobs
[**jobOccurrences**](JobsApi.md#jobOccurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**runJobNow**](JobsApi.md#runJobNow) | **POST** /job_api/{id}/run_now | Run a job now
[**updateJob**](JobsApi.md#updateJob) | **PUT** /job_api/{id} | Updates a single job



## createJob

> SingleJobMessage createJob(opts)

Creates a job

Creates a job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let opts = {
  'jobIn': new Bjr4js.JobIn() // JobIn | 
};
apiInstance.createJob(opts, (error, data, response) => {
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
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteJob

> SingleJobMessage deleteJob(id)

Deletes a job

Deletes a job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | 
apiInstance.deleteJob(id, (error, data, response) => {
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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJob

> SingleJobMessage getJob(id)

Retrieves a single job

Retrieves a single job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | 
apiInstance.getJob(id, (error, data, response) => {
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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobRuns

> JobRunArrayMessage getJobRuns(id, opts)

Retrieve the runs for a job

Retrieve the runs for a job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | 
let opts = {
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'succeeded': true, // Boolean | 
  'startDate': "startDate_example", // String | 
  'endDate': "endDate_example", // String | 
  'timezone': "timezone_example" // String | 
};
apiInstance.getJobRuns(id, opts, (error, data, response) => {
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
 **succeeded** | **Boolean**|  | [optional] 
 **startDate** | **String**|  | [optional] 
 **endDate** | **String**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobs

> JobArrayMessage getJobs(opts)

Retrieves jobs

Retrieves jobs

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let opts = {
  'expression': "expression_example", // String | A search expression to filter jobs.
  'timezone': "timezone_example", // String | 
  'perPage': 56, // Number | 
  'page': 56 // Number | 
};
apiInstance.getJobs(opts, (error, data, response) => {
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
 **expression** | **String**| A search expression to filter jobs. | [optional] 
 **timezone** | **String**|  | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## jobOccurrences

> OccurrenceMessage jobOccurrences(id, endDate, opts)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | The id of the job to retrieve occurrences for
let endDate = "endDate_example"; // String | The date to retrieve occurrences up to
let opts = {
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'timezone': "timezone_example" // String | 
};
apiInstance.jobOccurrences(id, endDate, opts, (error, data, response) => {
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
 **id** | **Number**| The id of the job to retrieve occurrences for | 
 **endDate** | **String**| The date to retrieve occurrences up to | 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## runJobNow

> runJobNow(id)

Run a job now

Queues a job to run now

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | The id of the job to execute now
apiInstance.runJobNow(id, (error, data, response) => {
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
 **id** | **Number**| The id of the job to execute now | 

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updateJob

> SingleJobMessage updateJob(id, opts)

Updates a single job

Updates a single job

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobsApi();
let id = 56; // Number | 
let opts = {
  'jobIn': new Bjr4js.JobIn() // JobIn | 
};
apiInstance.updateJob(id, opts, (error, data, response) => {
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
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

