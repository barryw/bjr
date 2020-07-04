# BJR.api.JobsApi

## Load the API package
```dart
import 'package:BJR/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **post** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **delete** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **get** /job_api/{id} | Retrieves a single job
[**getJobRuns**](JobsApi.md#getJobRuns) | **get** /job_api/{id}/runs | Retrieve the runs for a job
[**getJobs**](JobsApi.md#getJobs) | **get** /job_api | Retrieves jobs
[**jobOccurrences**](JobsApi.md#jobOccurrences) | **get** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**runJobNow**](JobsApi.md#runJobNow) | **post** /job_api/{id}/run_now | Run a job now
[**updateJob**](JobsApi.md#updateJob) | **put** /job_api/{id} | Updates a single job


# **createJob**
> SingleJobMessage createJob(jobIn)

Creates a job

Creates a job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var jobIn = new JobIn(); // JobIn | 

try { 
    var result = api_instance.createJob(jobIn);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->createJob: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJob**
> SingleJobMessage deleteJob(id)

Deletes a job

Deletes a job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | 

try { 
    var result = api_instance.deleteJob(id);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->deleteJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> SingleJobMessage getJob(id)

Retrieves a single job

Retrieves a single job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | 

try { 
    var result = api_instance.getJob(id);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->getJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobRuns**
> JobRunArrayMessage getJobRuns(id, perPage, page, succeeded, startDate, endDate, timezone)

Retrieve the runs for a job

Retrieve the runs for a job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | 
var perPage = 56; // int | 
var page = 56; // int | 
var succeeded = true; // bool | 
var startDate = startDate_example; // String | 
var endDate = endDate_example; // String | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.getJobRuns(id, perPage, page, succeeded, startDate, endDate, timezone);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->getJobRuns: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]
 **perPage** | **int**|  | [optional] [default to null]
 **page** | **int**|  | [optional] [default to null]
 **succeeded** | **bool**|  | [optional] [default to null]
 **startDate** | **String**|  | [optional] [default to null]
 **endDate** | **String**|  | [optional] [default to null]
 **timezone** | **String**|  | [optional] [default to null]

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
> JobArrayMessage getJobs(expression, timezone, perPage, page)

Retrieves jobs

Retrieves jobs

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var expression = expression_example; // String | A search expression to filter jobs.
var timezone = timezone_example; // String | 
var perPage = 56; // int | 
var page = 56; // int | 

try { 
    var result = api_instance.getJobs(expression, timezone, perPage, page);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->getJobs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expression** | **String**| A search expression to filter jobs. | [optional] [default to null]
 **timezone** | **String**|  | [optional] [default to null]
 **perPage** | **int**|  | [optional] [default to null]
 **page** | **int**|  | [optional] [default to null]

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jobOccurrences**
> OccurrenceMessage jobOccurrences(id, endDate, perPage, page, timezone)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | The id of the job to retrieve occurrences for
var endDate = endDate_example; // String | The date to retrieve occurrences up to
var perPage = 56; // int | 
var page = 56; // int | 
var timezone = timezone_example; // String | 

try { 
    var result = api_instance.jobOccurrences(id, endDate, perPage, page, timezone);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->jobOccurrences: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job to retrieve occurrences for | [default to null]
 **endDate** | **String**| The date to retrieve occurrences up to | [default to null]
 **perPage** | **int**|  | [optional] [default to null]
 **page** | **int**|  | [optional] [default to null]
 **timezone** | **String**|  | [optional] [default to null]

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runJobNow**
> runJobNow(id)

Run a job now

Queues a job to run now

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | The id of the job to execute now

try { 
    api_instance.runJobNow(id);
} catch (e) {
    print("Exception when calling JobsApi->runJobNow: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the job to execute now | [default to null]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateJob**
> SingleJobMessage updateJob(id, jobIn)

Updates a single job

Updates a single job

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new JobsApi();
var id = 56; // int | 
var jobIn = new JobIn(); // JobIn | 

try { 
    var result = api_instance.updateJob(id, jobIn);
    print(result);
} catch (e) {
    print("Exception when calling JobsApi->updateJob: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [default to null]
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

