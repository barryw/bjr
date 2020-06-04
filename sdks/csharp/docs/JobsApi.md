# BJR.Api.JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateJob**](JobsApi.md#createjob) | **POST** /job_api | Creates a job
[**DeleteJob**](JobsApi.md#deletejob) | **DELETE** /job_api/{id} | Deletes a job
[**GetJob**](JobsApi.md#getjob) | **GET** /job_api/{id} | Retrieves a single job
[**GetJobRuns**](JobsApi.md#getjobruns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**GetJobs**](JobsApi.md#getjobs) | **GET** /job_api | Retrieves jobs
[**JobOccurrences**](JobsApi.md#joboccurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**RunJobNow**](JobsApi.md#runjobnow) | **POST** /job_api/{id}/run_now | Run a job now
[**UpdateJob**](JobsApi.md#updatejob) | **PUT** /job_api/{id} | Updates a single job



## CreateJob

> SingleJobMessage CreateJob (JobIn jobIn = null)

Creates a job

Creates a job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class CreateJobExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var jobIn = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Creates a job
                SingleJobMessage result = apiInstance.CreateJob(jobIn);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.CreateJob: " + e.Message );
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
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Job created successfully. |  -  |
| **400** | Invalid timezone name. |  -  |
| **422** | A job with this name already exists. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteJob

> SingleJobMessage DeleteJob (int id)

Deletes a job

Deletes a job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class DeleteJobExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | 

            try
            {
                // Deletes a job
                SingleJobMessage result = apiInstance.DeleteJob(id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.DeleteJob: " + e.Message );
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
 **id** | **int**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job %{id} deleted successfully. |  -  |
| **409** | Job &#39;%{id}&#39; cannot be deleted because it&#39;s running. Try disabling it first. |  -  |
| **404** | Job not found. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJob

> SingleJobMessage GetJob (int id)

Retrieves a single job

Retrieves a single job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | 

            try
            {
                // Retrieves a single job
                SingleJobMessage result = apiInstance.GetJob(id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.GetJob: " + e.Message );
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
 **id** | **int**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job returned successfully |  -  |
| **404** | Job not found. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobRuns

> JobRunArrayMessage GetJobRuns (int id, int perPage = null, int page = null, bool succeeded = null, string startDate = null, string endDate = null, string timezone = null)

Retrieve the runs for a job

Retrieve the runs for a job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobRunsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var succeeded = true;  // bool |  (optional) 
            var startDate = startDate_example;  // string |  (optional) 
            var endDate = endDate_example;  // string |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Retrieve the runs for a job
                JobRunArrayMessage result = apiInstance.GetJobRuns(id, perPage, page, succeeded, startDate, endDate, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.GetJobRuns: " + e.Message );
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
 **id** | **int**|  | 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **succeeded** | **bool**|  | [optional] 
 **startDate** | **string**|  | [optional] 
 **endDate** | **string**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Runs received successfully. |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobs

> JobArrayMessage GetJobs (string expression = null, string timezone = null, int perPage = null, int page = null)

Retrieves jobs

Retrieves jobs

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var expression = expression_example;  // string | A search expression to filter jobs. (optional) 
            var timezone = timezone_example;  // string |  (optional) 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 

            try
            {
                // Retrieves jobs
                JobArrayMessage result = apiInstance.GetJobs(expression, timezone, perPage, page);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.GetJobs: " + e.Message );
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
 **expression** | **string**| A search expression to filter jobs. | [optional] 
 **timezone** | **string**|  | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

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
| **200** | Jobs returned successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## JobOccurrences

> OccurrenceMessage JobOccurrences (int id, string endDate, int perPage = null, int page = null, string timezone = null)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class JobOccurrencesExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | The id of the job to retrieve occurrences for
            var endDate = endDate_example;  // string | The date to retrieve occurrences up to
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 
            var timezone = timezone_example;  // string |  (optional) 

            try
            {
                // Upcoming job occurrences
                OccurrenceMessage result = apiInstance.JobOccurrences(id, endDate, perPage, page, timezone);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.JobOccurrences: " + e.Message );
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
 **id** | **int**| The id of the job to retrieve occurrences for | 
 **endDate** | **string**| The date to retrieve occurrences up to | 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **timezone** | **string**|  | [optional] 

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Occurrences received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |
| **404** | Job not found |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RunJobNow

> void RunJobNow (int id)

Run a job now

Queues a job to run now

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class RunJobNowExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | The id of the job to execute now

            try
            {
                // Run a job now
                apiInstance.RunJobNow(id);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.RunJobNow: " + e.Message );
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
 **id** | **int**| The id of the job to execute now | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job queued to execute |  -  |
| **404** | Job not found |  -  |
| **409** | Job is already running |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateJob

> SingleJobMessage UpdateJob (int id, JobIn jobIn = null)

Updates a single job

Updates a single job

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class UpdateJobExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new JobsApi(Configuration.Default);
            var id = 56;  // int | 
            var jobIn = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Updates a single job
                SingleJobMessage result = apiInstance.UpdateJob(id, jobIn);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling JobsApi.UpdateJob: " + e.Message );
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
 **id** | **int**|  | 
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Job updated successfully. |  -  |
| **422** | Job could not be updated. |  -  |
| **404** | Job not found. |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

