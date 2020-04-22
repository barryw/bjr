# BjrApiV1.JobsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **POST** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **DELETE** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **GET** /job_api/{id} | Retrieves a single job
[**getJobRuns**](JobsApi.md#getJobRuns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**getJobs**](JobsApi.md#getJobs) | **GET** /job_api | Retrieves jobs
[**jobOccurrences**](JobsApi.md#jobOccurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**updateJob**](JobsApi.md#updateJob) | **PUT** /job_api/{id} | Updates a single job

<a name="createJob"></a>
# **createJob**
> SingleJobMessage createJob()

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

[**SingleJobMessage**](SingleJobMessage.md)

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
> SingleJobMessage getJob(id)

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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobRuns"></a>
# **getJobRuns**
> JobRunArrayMessage getJobRuns(id, opts)

Retrieve the runs for a job

Retrieve the runs for a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
let id = 56; // Number | 
let opts = { 
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'succeeded': true, // Boolean | 
  'startDate': "startDate_example", // String | 
  'endDate': "endDate_example" // String | 
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

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobs"></a>
# **getJobs**
> JobArrayMessage getJobs(opts)

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
  'endDate': "endDate_example", // String | Specify an end date to search jobs by.
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
 **tags** | **String**| Specify a comma-separated list of tags to search jobs by. | [optional] 
 **incexc** | **String**|  | [optional] 
 **startDate** | **String**| Specify a start date to search jobs by. | [optional] 
 **endDate** | **String**| Specify an end date to search jobs by. | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="jobOccurrences"></a>
# **jobOccurrences**
> OccurrenceMessage jobOccurrences(id, endDate, opts)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Example
```javascript
import BjrApiV1 from 'bjr_api_v1';
let defaultClient = BjrApiV1.ApiClient.instance;


let apiInstance = new BjrApiV1.JobsApi();
let id = 56; // Number | The id of the job to retrieve occurrences for
let endDate = "endDate_example"; // String | The date to retrieve occurrences up to
let opts = { 
  'perPage': 56, // Number | 
  'page': 56 // Number | 
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

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateJob"></a>
# **updateJob**
> SingleJobMessage updateJob(id)

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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

