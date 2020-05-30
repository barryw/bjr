# Bjr4js.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBusyThreadCount**](JobServerApi.md#getBusyThreadCount) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**quiesceNode**](JobServerApi.md#quiesceNode) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**statsByDay**](JobServerApi.md#statsByDay) | **GET** /job_server_api/daily_job_stats | Job statistics by day
[**statsByHour**](JobServerApi.md#statsByHour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**statsByMinute**](JobServerApi.md#statsByMinute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**statsByWeek**](JobServerApi.md#statsByWeek) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
[**todaysStats**](JobServerApi.md#todaysStats) | **GET** /job_server_api/todays_stats | Todays Stats
[**upcomingJobs**](JobServerApi.md#upcomingJobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs



## getBusyThreadCount

> BusyThreadCountMessage getBusyThreadCount()

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
apiInstance.getBusyThreadCount((error, data, response) => {
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

[**BusyThreadCountMessage**](BusyThreadCountMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## quiesceNode

> GenericMessage quiesceNode(host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let host = "host_example"; // String | The hostname of the worker pod/node to quiesce
apiInstance.quiesceNode(host, (error, data, response) => {
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
 **host** | **String**| The hostname of the worker pod/node to quiesce | 

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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


## statsByDay

> JobStatMessage statsByDay(opts)

Job statistics by day

Get daily job statistics

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'startDate': "startDate_example", // String | The start date from which to get daily metrics from
  'endDate': "endDate_example", // String | The end date from which to get daily metrics from
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'timezone': "timezone_example" // String | 
};
apiInstance.statsByDay(opts, (error, data, response) => {
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
 **startDate** | **String**| The start date from which to get daily metrics from | [optional] 
 **endDate** | **String**| The end date from which to get daily metrics from | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statsByHour

> JobStatMessage statsByHour(opts)

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
let opts = {
  'startDate': "startDate_example", // String | The start date from which to get hourly metrics from
  'endDate': "endDate_example", // String | The end date from which to get hourly metrics from
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'timezone': "timezone_example" // String | 
};
apiInstance.statsByHour(opts, (error, data, response) => {
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
 **startDate** | **String**| The start date from which to get hourly metrics from | [optional] 
 **endDate** | **String**| The end date from which to get hourly metrics from | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 
 **timezone** | **String**|  | [optional] 

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
  'startDate': "startDate_example", // String | The start date from which to get minutely metrics from
  'endDate': "endDate_example", // String | The end date from which to get minutely metrics from
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'timezone': "timezone_example" // String | 
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
 **startDate** | **String**| The start date from which to get minutely metrics from | [optional] 
 **endDate** | **String**| The end date from which to get minutely metrics from | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## statsByWeek

> JobStatMessage statsByWeek(opts)

Job statistics by week

Get weekly job statistics

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'startDate': "startDate_example", // String | The start date from which to get weekly metrics from
  'endDate': "endDate_example", // String | The end date from which to get weekly metrics from
  'perPage': 56, // Number | 
  'page': 56, // Number | 
  'timezone': "timezone_example" // String | 
};
apiInstance.statsByWeek(opts, (error, data, response) => {
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
 **startDate** | **String**| The start date from which to get weekly metrics from | [optional] 
 **endDate** | **String**| The end date from which to get weekly metrics from | [optional] 
 **perPage** | **Number**|  | [optional] 
 **page** | **Number**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## todaysStats

> TodaysStatsMessage todaysStats(opts)

Todays Stats

Get the high level job statistics for today

### Example

```javascript
import Bjr4js from 'bjr4js';
let defaultClient = Bjr4js.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: bearerAuth
let bearerAuth = defaultClient.authentications['bearerAuth'];
bearerAuth.accessToken = "YOUR ACCESS TOKEN"

let apiInstance = new Bjr4js.JobServerApi();
let opts = {
  'timezone': "timezone_example" // String | 
};
apiInstance.todaysStats(opts, (error, data, response) => {
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
 **timezone** | **String**|  | [optional] 

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

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

