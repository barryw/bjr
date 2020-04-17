# BJR.Api.JobsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateJob**](JobsApi.md#createjob) | **POST** /job_api | Creates a job
[**DeleteJob**](JobsApi.md#deletejob) | **DELETE** /job_api/{id} | Deletes a job
[**GetJob**](JobsApi.md#getjob) | **GET** /job_api/{id} | Retrieves a single job
[**GetJobRuns**](JobsApi.md#getjobruns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**GetJobs**](JobsApi.md#getjobs) | **GET** /job_api | Retrieves jobs
[**UpdateJob**](JobsApi.md#updatejob) | **PUT** /job_api/{id} | Updates a single job

<a name="createjob"></a>
# **CreateJob**
> JobOut CreateJob (JobIn body = null)

Creates a job

Creates a job

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class CreateJobExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var body = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Creates a job
                JobOut result = apiInstance.CreateJob(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.CreateJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="deletejob"></a>
# **DeleteJob**
> void DeleteJob (int? id)

Deletes a job

Deletes a job

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class DeleteJobExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var id = 56;  // int? | 

            try
            {
                // Deletes a job
                apiInstance.DeleteJob(id);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.DeleteJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjob"></a>
# **GetJob**
> SingleJob GetJob (int? id)

Retrieves a single job

Retrieves a single job

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var id = 56;  // int? | 

            try
            {
                // Retrieves a single job
                SingleJob result = apiInstance.GetJob(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.GetJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**SingleJob**](SingleJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjobruns"></a>
# **GetJobRuns**
> JobRunArray GetJobRuns (int? id)

Retrieve the runs for a job

Retrieve the runs for a job

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobRunsExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var id = 56;  // int? | 

            try
            {
                // Retrieve the runs for a job
                JobRunArray result = apiInstance.GetJobRuns(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.GetJobRuns: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**JobRunArray**](JobRunArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getjobs"></a>
# **GetJobs**
> JobArray GetJobs (string tags = null, string incexc = null, string startDate = null, string endDate = null)

Retrieves jobs

Retrieves jobs

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetJobsExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var tags = tags_example;  // string | Specify a comma-separated list of tags to search jobs by. (optional) 
            var incexc = incexc_example;  // string |  (optional) 
            var startDate = startDate_example;  // string | Specify a start date to search jobs by. (optional) 
            var endDate = endDate_example;  // string | Specify an end date to search jobs by. (optional) 

            try
            {
                // Retrieves jobs
                JobArray result = apiInstance.GetJobs(tags, incexc, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.GetJobs: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | **string**| Specify a comma-separated list of tags to search jobs by. | [optional] 
 **incexc** | **string**|  | [optional] 
 **startDate** | **string**| Specify a start date to search jobs by. | [optional] 
 **endDate** | **string**| Specify an end date to search jobs by. | [optional] 

### Return type

[**JobArray**](JobArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="updatejob"></a>
# **UpdateJob**
> JobOut UpdateJob (int? id, JobIn body = null)

Updates a single job

Updates a single job

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class UpdateJobExample
    {
        public void main()
        {

            var apiInstance = new JobsApi();
            var id = 56;  // int? | 
            var body = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Updates a single job
                JobOut result = apiInstance.UpdateJob(id, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling JobsApi.UpdateJob: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
