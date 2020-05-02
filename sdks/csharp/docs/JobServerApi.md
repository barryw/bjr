# BJR.Api.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RecentJobs**](JobServerApi.md#recentjobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**StatsByHour**](JobServerApi.md#statsbyhour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**StatsByMinute**](JobServerApi.md#statsbyminute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**UpcomingJobs**](JobServerApi.md#upcomingjobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs



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


## StatsByHour

> JobStatMessage StatsByHour ()

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

            try
            {
                // Job statistics by hour
                JobStatMessage result = apiInstance.StatsByHour();
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

This endpoint does not need any parameter.

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
| **200** | Hourly stats received successfully |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByMinute

> JobStatMessage StatsByMinute (int count = null)

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
            var count = 56;  // int | The number of stats to return (max 60) (optional) 

            try
            {
                // Job statistics by minute
                JobStatMessage result = apiInstance.StatsByMinute(count);
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
 **count** | **int**| The number of stats to return (max 60) | [optional] 

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
| **200** | Minutely stats received successfully |  -  |

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

