# \JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_busy_thread_count**](JobServerApi.md#get_busy_thread_count) | **Get** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**quiesce_node**](JobServerApi.md#quiesce_node) | **Post** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**recent_jobs**](JobServerApi.md#recent_jobs) | **Get** /job_server_api/recent_jobs | List of recent jobs
[**stats_by_day**](JobServerApi.md#stats_by_day) | **Get** /job_server_api/daily_job_stats | Job statistics by day
[**stats_by_hour**](JobServerApi.md#stats_by_hour) | **Get** /job_server_api/hourly_job_stats | Job statistics by hour
[**stats_by_minute**](JobServerApi.md#stats_by_minute) | **Get** /job_server_api/minutely_job_stats | Job statistics by minute
[**stats_by_week**](JobServerApi.md#stats_by_week) | **Get** /job_server_api/weekly_job_stats | Job statistics by week
[**todays_stats**](JobServerApi.md#todays_stats) | **Get** /job_server_api/todays_stats | Todays Stats
[**upcoming_jobs**](JobServerApi.md#upcoming_jobs) | **Get** /job_server_api/upcoming_jobs | List of upcoming jobs



## get_busy_thread_count

> crate::models::BusyThreadCountMessage get_busy_thread_count()
Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::BusyThreadCountMessage**](BusyThreadCountMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quiesce_node

> crate::models::GenericMessage quiesce_node(host)
Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**host** | **String** | The hostname of the worker pod/node to quiesce | [required] |

### Return type

[**crate::models::GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## recent_jobs

> crate::models::JobArrayMessage recent_jobs(count)
List of recent jobs

Get a list of the most recently run jobs

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**count** | Option<**i32**> | The number of jobs to return (max 20) |  |

### Return type

[**crate::models::JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stats_by_day

> crate::models::JobStatMessage stats_by_day(start_date, end_date, per_page, page, timezone)
Job statistics by day

Get daily job statistics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**start_date** | Option<**String**> | The start date from which to get daily metrics from |  |
**end_date** | Option<**String**> | The end date from which to get daily metrics from |  |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stats_by_hour

> crate::models::JobStatMessage stats_by_hour(start_date, end_date, per_page, page, timezone)
Job statistics by hour

Get hourly job statistics for the day

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**start_date** | Option<**String**> | The start date from which to get hourly metrics from |  |
**end_date** | Option<**String**> | The end date from which to get hourly metrics from |  |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stats_by_minute

> crate::models::JobStatMessage stats_by_minute(start_date, end_date, per_page, page, timezone)
Job statistics by minute

Get minutely job statistics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**start_date** | Option<**String**> | The start date from which to get minutely metrics from |  |
**end_date** | Option<**String**> | The end date from which to get minutely metrics from |  |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stats_by_week

> crate::models::JobStatMessage stats_by_week(start_date, end_date, per_page, page, timezone)
Job statistics by week

Get weekly job statistics

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**start_date** | Option<**String**> | The start date from which to get weekly metrics from |  |
**end_date** | Option<**String**> | The end date from which to get weekly metrics from |  |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## todays_stats

> crate::models::TodaysStatsMessage todays_stats(timezone)
Todays Stats

Get the high level job statistics for today

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## upcoming_jobs

> crate::models::JobArrayMessage upcoming_jobs(count)
List of upcoming jobs

A list of jobs that are about to execute

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**count** | Option<**i32**> | The number of jobs to return (max 20) |  |

### Return type

[**crate::models::JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

