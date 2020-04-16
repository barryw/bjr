# BjrApiV1.JobsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **POST** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **DELETE** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **GET** /job_api/{id} | Retrieves a single job
[**getJobs**](JobsApi.md#getJobs) | **GET** /job_api | Retrieves jobs
[**updateJob**](JobsApi.md#updateJob) | **PUT** /job_api/{id} | Updates a single job

<a name="createJob"></a>
# **createJob**
> JobOut createJob()

Creates a job

Creates a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();

apiInstance.createJob(, (error, data, response) => {
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

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteJob"></a>
# **deleteJob**
> deleteJob(id)

Deletes a job

Deletes a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
let id = 56; // Number | 

apiInstance.deleteJob(id, (error, data, response) => {
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

<a name="getJob"></a>
# **getJob**
> SingleJob getJob(id)

Retrieves a single job

Retrieves a single job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
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

[**SingleJob**](SingleJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobs"></a>
# **getJobs**
> JobArray getJobs(opts)

Retrieves jobs

Retrieves jobs

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
let opts = { 
  'tags': "tags_example", // String | Specify a comma-separated list of tags to search jobs by.
  'incexc': "incexc_example", // String | 
  'startDate': "startDate_example", // String | Specify a start date to search jobs by.
  'endDate': "endDate_example" // String | Specify an end date to search jobs by.
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
 **tags** | **String**| Specify a comma-separated list of tags to search jobs by. | [optional] 
 **incexc** | **String**|  | [optional] 
 **startDate** | **String**| Specify a start date to search jobs by. | [optional] 
 **endDate** | **String**| Specify an end date to search jobs by. | [optional] 

### Return type

[**JobArray**](JobArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateJob"></a>
# **updateJob**
> JobOut updateJob(id)

Updates a single job

Updates a single job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
let id = 56; // Number | 

apiInstance.updateJob(id, (error, data, response) => {
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

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

