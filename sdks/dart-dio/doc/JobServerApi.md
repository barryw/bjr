# BJR.api.JobServerApi

## Load the API package
```dart
import 'package:BJR/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBusyThreadCount**](JobServerApi.md#getbusythreadcount) | **get** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**quiesceNode**](JobServerApi.md#quiescenode) | **post** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**recentJobs**](JobServerApi.md#recentjobs) | **get** /job_server_api/recent_jobs | List of recent jobs
[**statsByDay**](JobServerApi.md#statsbyday) | **get** /job_server_api/daily_job_stats | Job statistics by day
[**statsByHour**](JobServerApi.md#statsbyhour) | **get** /job_server_api/hourly_job_stats | Job statistics by hour
[**statsByMinute**](JobServerApi.md#statsbyminute) | **get** /job_server_api/minutely_job_stats | Job statistics by minute
[**statsByWeek**](JobServerApi.md#statsbyweek) | **get** /job_server_api/weekly_job_stats | Job statistics by week
[**todaysStats**](JobServerApi.md#todaysstats) | **get** /job_server_api/todays_stats | Todays Stats
[**upcomingJobs**](JobServerApi.md#upcomingjobs) | **get** /job_server_api/upcoming_jobs | List of upcoming jobs


# **getBusyThreadCount**
> BusyThreadCountMessage getBusyThreadCount()

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();

try { 
    var result = api_instance.getBusyThreadCount();
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->getBusyThreadCount: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quiesceNode**
> GenericMessage quiesceNode(host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var host = host_example; // String | The hostname of the worker pod/node to quiesce

try { 
    var result = api_instance.quiesceNode(host);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->quiesceNode: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recentJobs**
> JobArrayMessage recentJobs(count)

List of recent jobs

Get a list of the most recently run jobs

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var count = 56; // int | The number of jobs to return (max 20)

try { 
    var result = api_instance.recentJobs(count);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->recentJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| The number of jobs to return (max 20) | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsByDay**
> JobStatMessage statsByDay(startDate, endDate, perPage, page, timezone)

Job statistics by day

Get daily job statistics

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var startDate = startDate_example; // String | The start date from which to get daily metrics from
var endDate = endDate_example; // String | The end date from which to get daily metrics from
var perPage = 56; // int | 
var page = 56; // int | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.statsByDay(startDate, endDate, perPage, page, timezone);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->statsByDay: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| The start date from which to get daily metrics from | [optional] 
 **endDate** | **String**| The end date from which to get daily metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsByHour**
> JobStatMessage statsByHour(startDate, endDate, perPage, page, timezone)

Job statistics by hour

Get hourly job statistics for the day

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var startDate = startDate_example; // String | The start date from which to get hourly metrics from
var endDate = endDate_example; // String | The end date from which to get hourly metrics from
var perPage = 56; // int | 
var page = 56; // int | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.statsByHour(startDate, endDate, perPage, page, timezone);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->statsByHour: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| The start date from which to get hourly metrics from | [optional] 
 **endDate** | **String**| The end date from which to get hourly metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsByMinute**
> JobStatMessage statsByMinute(startDate, endDate, perPage, page, timezone)

Job statistics by minute

Get minutely job statistics

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var startDate = startDate_example; // String | The start date from which to get minutely metrics from
var endDate = endDate_example; // String | The end date from which to get minutely metrics from
var perPage = 56; // int | 
var page = 56; // int | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.statsByMinute(startDate, endDate, perPage, page, timezone);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->statsByMinute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| The start date from which to get minutely metrics from | [optional] 
 **endDate** | **String**| The end date from which to get minutely metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **statsByWeek**
> JobStatMessage statsByWeek(startDate, endDate, perPage, page, timezone)

Job statistics by week

Get weekly job statistics

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var startDate = startDate_example; // String | The start date from which to get weekly metrics from
var endDate = endDate_example; // String | The end date from which to get weekly metrics from
var perPage = 56; // int | 
var page = 56; // int | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.statsByWeek(startDate, endDate, perPage, page, timezone);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->statsByWeek: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| The start date from which to get weekly metrics from | [optional] 
 **endDate** | **String**| The end date from which to get weekly metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **String**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **todaysStats**
> TodaysStatsMessage todaysStats(timezone)

Todays Stats

Get the high level job statistics for today

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.todaysStats(timezone);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->todaysStats: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upcomingJobs**
> JobArrayMessage upcomingJobs(count)

List of upcoming jobs

A list of jobs that are about to execute

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobServerApi();
var count = 56; // int | The number of jobs to return (max 20)

try { 
    var result = api_instance.upcomingJobs(count);
    print(result);
} catch (e) {
    print('Exception when calling JobServerApi->upcomingJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int**| The number of jobs to return (max 20) | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

