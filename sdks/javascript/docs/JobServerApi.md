# Bjr4js.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**statsByHour**](JobServerApi.md#statsByHour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**statsByMinute**](JobServerApi.md#statsByMinute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**upcomingJobs**](JobServerApi.md#upcomingJobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs



## recentJobs

> JobArrayMessage recentJobs(opts)

List of recent jobs

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


## statsByHour

> JobStatMessage statsByHour()

Job statistics by hour

Get hourly job statistics for the day

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
apiInstance.statsByHour((error, data, response) => {
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

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statsByMinute

> JobStatMessage statsByMinute(opts)

Job statistics by minute

Get minutely job statistics

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'count': 56 // Number | The number of stats to return (max 60)
};
apiInstance.statsByMinute(opts, (error, data, response) => {
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
 **count** | **Number**| The number of stats to return (max 60) | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upcomingJobs

> JobArrayMessage upcomingJobs(opts)

List of upcoming jobs

A list of jobs that are about to execute

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
apiInstance.upcomingJobs(opts, (error, data, response) => {
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

