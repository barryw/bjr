# \JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBusyThreadCount**](JobServerApi.md#GetBusyThreadCount) | **Get** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**QuiesceNode**](JobServerApi.md#QuiesceNode) | **Post** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**RecentJobs**](JobServerApi.md#RecentJobs) | **Get** /job_server_api/recent_jobs | List of recent jobs
[**StatsByDay**](JobServerApi.md#StatsByDay) | **Get** /job_server_api/daily_job_stats | Job statistics by day
[**StatsByHour**](JobServerApi.md#StatsByHour) | **Get** /job_server_api/hourly_job_stats | Job statistics by hour
[**StatsByMinute**](JobServerApi.md#StatsByMinute) | **Get** /job_server_api/minutely_job_stats | Job statistics by minute
[**StatsByWeek**](JobServerApi.md#StatsByWeek) | **Get** /job_server_api/weekly_job_stats | Job statistics by week
[**TodaysStats**](JobServerApi.md#TodaysStats) | **Get** /job_server_api/todays_stats | Todays Stats
[**UpcomingJobs**](JobServerApi.md#UpcomingJobs) | **Get** /job_server_api/upcoming_jobs | List of upcoming jobs



## GetBusyThreadCount

> BusyThreadCountMessage GetBusyThreadCount(ctx, )

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**BusyThreadCountMessage**](BusyThreadCountMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuiesceNode

> GenericMessage QuiesceNode(ctx, host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**host** | **string**| The hostname of the worker pod/node to quiesce | 

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecentJobs

> JobArrayMessage RecentJobs(ctx, optional)

List of recent jobs

Get a list of the most recently run jobs

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***RecentJobsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RecentJobsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **optional.Int32**| The number of jobs to return (max 20) | 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByDay

> JobStatMessage StatsByDay(ctx, optional)

Job statistics by day

Get daily job statistics

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***StatsByDayOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a StatsByDayOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| The start date from which to get daily metrics from | 
 **endDate** | **optional.String**| The end date from which to get daily metrics from | 
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByHour

> JobStatMessage StatsByHour(ctx, optional)

Job statistics by hour

Get hourly job statistics for the day

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***StatsByHourOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a StatsByHourOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| The start date from which to get hourly metrics from | 
 **endDate** | **optional.String**| The end date from which to get hourly metrics from | 
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByMinute

> JobStatMessage StatsByMinute(ctx, optional)

Job statistics by minute

Get minutely job statistics

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***StatsByMinuteOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a StatsByMinuteOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| The start date from which to get minutely metrics from | 
 **endDate** | **optional.String**| The end date from which to get minutely metrics from | 
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByWeek

> JobStatMessage StatsByWeek(ctx, optional)

Job statistics by week

Get weekly job statistics

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***StatsByWeekOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a StatsByWeekOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **optional.String**| The start date from which to get weekly metrics from | 
 **endDate** | **optional.String**| The end date from which to get weekly metrics from | 
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TodaysStats

> TodaysStatsMessage TodaysStats(ctx, optional)

Todays Stats

Get the high level job statistics for today

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***TodaysStatsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a TodaysStatsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezone** | **optional.String**|  | 

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpcomingJobs

> JobArrayMessage UpcomingJobs(ctx, optional)

List of upcoming jobs

A list of jobs that are about to execute

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***UpcomingJobsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a UpcomingJobsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **optional.Int32**| The number of jobs to return (max 20) | 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

