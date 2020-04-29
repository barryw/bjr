# Bjr4js.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobsPerDay**](JobServerApi.md#jobsPerDay) | **GET** /job_server_api/job_runs_per_day | Jobs Per Day
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/most_recent_jobs | Most Recent Jobs



## jobsPerDay

> JobsPerDay jobsPerDay(opts)

Jobs Per Day

The number of jobs processed and failed by day

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'days': 56 // Number | The number of days to return (max 30)
};
apiInstance.jobsPerDay(opts, (error, data, response) => {
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
 **days** | **Number**| The number of days to return (max 30) | [optional] 

### Return type

[**JobsPerDay**](JobsPerDay.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## recentJobs

> JobArrayMessage recentJobs(opts)

Most Recent Jobs

Get a list of the most recently run jobs

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'count': 56 // Number | The number of jobs to return (max 20)
};
apiInstance.recentJobs(opts, (error, data, response) => {
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
 **count** | **Number**| The number of jobs to return (max 20) | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

