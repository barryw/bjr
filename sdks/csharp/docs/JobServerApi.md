# BJR.Api.JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**JobsPerDay**](JobServerApi.md#jobsperday) | **GET** /job_server_api/job_runs_per_day | Jobs Per Day
[**RecentJobs**](JobServerApi.md#recentjobs) | **GET** /job_server_api/most_recent_jobs | Most Recent Jobs



## JobsPerDay

> JobsPerDay JobsPerDay (int days = null)

Jobs Per Day

The number of jobs processed and failed by day

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class JobsPerDayExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobServerApi(Configuration.Default);
            var days = 56;  // int | The number of days to return (max 30) (optional) 

            try
            {
                // Jobs Per Day
                JobsPerDay result = apiInstance.JobsPerDay(days);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobServerApi.JobsPerDay: " + e.Message );
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
 **days** | **int**| The number of days to return (max 30) | [optional] 

### Return type

[**JobsPerDay**](JobsPerDay.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job processed statistics received successfully |  -  |
| **406** | Too many days specified |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecentJobs

> JobArrayMessage RecentJobs (int count = null)

Most Recent Jobs

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
                // Most Recent Jobs
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

