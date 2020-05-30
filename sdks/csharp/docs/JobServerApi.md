# BJR.Api.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBusyThreadCount**](JobServerApi.md#getbusythreadcount) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**QuiesceNode**](JobServerApi.md#quiescenode) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**RecentJobs**](JobServerApi.md#recentjobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**StatsByDay**](JobServerApi.md#statsbyday) | **GET** /job_server_api/daily_job_stats | Job statistics by day
[**StatsByHour**](JobServerApi.md#statsbyhour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**StatsByMinute**](JobServerApi.md#statsbyminute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**StatsByWeek**](JobServerApi.md#statsbyweek) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
[**TodaysStats**](JobServerApi.md#todaysstats) | **GET** /job_server_api/todays_stats | Todays Stats
[**UpcomingJobs**](JobServerApi.md#upcomingjobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs



## GetBusyThreadCount

> BusyThreadCountMessage GetBusyThreadCount ()

Retrieve the count of busy workers across worker pods/nodes

Retrieve the count of busy workers across worker pods/nodes

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetBusyThreadCountExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);

            try
            {
                // Retrieve the count of busy workers across worker pods/nodes
                BusyThreadCountMessage result = apiInstance.GetBusyThreadCount();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.GetBusyThreadCount: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Busy thread count stats returned successfully |  -  |
| **401** | Not authorized |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuiesceNode

> GenericMessage QuiesceNode (string host)

Quiesce a single worker pod/node

Quiesce a single worker pod/node

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class QuiesceNodeExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var host = host_example;  // string | The hostname of the worker pod/node to quiesce

            try
            {
                // Quiesce a single worker pod/node
                GenericMessage result = apiInstance.QuiesceNode(host);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.QuiesceNode: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **string**| The hostname of the worker pod/node to quiesce | 

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Worker quiesced successfully |  -  |
| **401** | Not authorized |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecentJobs

> JobArrayMessage RecentJobs (int count = null)

List of recent jobs

Get a list of the most recently run jobs

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class RecentJobsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var count = 56;  // int | The number of jobs to return (max 20) (optional) 

            try
            {
                // List of recent jobs
                JobArrayMessage result = apiInstance.RecentJobs(count);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.RecentJobs: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Jobs received successfully |  -  |
| **406** | Too many jobs specified |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByDay

> JobStatMessage StatsByDay (string startDate = null, string endDate = null, int perPage = null, int page = null, string timezone = null)

Job statistics by day

Get daily job statistics

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class StatsByDayExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var startDate = startDate_example;  // string | The start date from which to get daily metrics from (optional) 
            var endDate = endDate_example;  // string | The end date from which to get daily metrics from (optional) 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Job statistics by day
                JobStatMessage result = apiInstance.StatsByDay(startDate, endDate, perPage, page, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.StatsByDay: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| The start date from which to get daily metrics from | [optional] 
 **endDate** | **string**| The end date from which to get daily metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Daily stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByHour

> JobStatMessage StatsByHour (string startDate = null, string endDate = null, int perPage = null, int page = null, string timezone = null)

Job statistics by hour

Get hourly job statistics for the day

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class StatsByHourExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var startDate = startDate_example;  // string | The start date from which to get hourly metrics from (optional) 
            var endDate = endDate_example;  // string | The end date from which to get hourly metrics from (optional) 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Job statistics by hour
                JobStatMessage result = apiInstance.StatsByHour(startDate, endDate, perPage, page, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.StatsByHour: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| The start date from which to get hourly metrics from | [optional] 
 **endDate** | **string**| The end date from which to get hourly metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Hourly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByMinute

> JobStatMessage StatsByMinute (string startDate = null, string endDate = null, int perPage = null, int page = null, string timezone = null)

Job statistics by minute

Get minutely job statistics

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class StatsByMinuteExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var startDate = startDate_example;  // string | The start date from which to get minutely metrics from (optional) 
            var endDate = endDate_example;  // string | The end date from which to get minutely metrics from (optional) 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Job statistics by minute
                JobStatMessage result = apiInstance.StatsByMinute(startDate, endDate, perPage, page, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.StatsByMinute: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| The start date from which to get minutely metrics from | [optional] 
 **endDate** | **string**| The end date from which to get minutely metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Minutely stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByWeek

> JobStatMessage StatsByWeek (string startDate = null, string endDate = null, int perPage = null, int page = null, string timezone = null)

Job statistics by week

Get weekly job statistics

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class StatsByWeekExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var startDate = startDate_example;  // string | The start date from which to get weekly metrics from (optional) 
            var endDate = endDate_example;  // string | The end date from which to get weekly metrics from (optional) 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Job statistics by week
                JobStatMessage result = apiInstance.StatsByWeek(startDate, endDate, perPage, page, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.StatsByWeek: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string**| The start date from which to get weekly metrics from | [optional] 
 **endDate** | **string**| The end date from which to get weekly metrics from | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Weekly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TodaysStats

> TodaysStatsMessage TodaysStats (string timezone = null)

Todays Stats

Get the high level job statistics for today

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class TodaysStatsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Todays Stats
                TodaysStatsMessage result = apiInstance.TodaysStats(timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.TodaysStats: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezone** | **string**|  | [optional] 

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Get the high level job statistics for today |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpcomingJobs

> JobArrayMessage UpcomingJobs (int count = null)

List of upcoming jobs

A list of jobs that are about to execute

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class UpcomingJobsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var count = 56;  // int | The number of jobs to return (max 20) (optional) 

            try
            {
                // List of upcoming jobs
                JobArrayMessage result = apiInstance.UpcomingJobs(count);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.UpcomingJobs: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Upcoming job list returned successfully |  -  |
| **406** | Too many jobs specified |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

