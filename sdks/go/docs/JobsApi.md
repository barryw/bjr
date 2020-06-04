# \JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateJob**](JobsApi.md#CreateJob) | **Post** /job_api | Creates a job
[**DeleteJob**](JobsApi.md#DeleteJob) | **Delete** /job_api/{id} | Deletes a job
[**GetJob**](JobsApi.md#GetJob) | **Get** /job_api/{id} | Retrieves a single job
[**GetJobRuns**](JobsApi.md#GetJobRuns) | **Get** /job_api/{id}/runs | Retrieve the runs for a job
[**GetJobs**](JobsApi.md#GetJobs) | **Get** /job_api | Retrieves jobs
[**JobOccurrences**](JobsApi.md#JobOccurrences) | **Get** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**RunJobNow**](JobsApi.md#RunJobNow) | **Post** /job_api/{id}/run_now | Run a job now
[**UpdateJob**](JobsApi.md#UpdateJob) | **Put** /job_api/{id} | Updates a single job



## CreateJob

> SingleJobMessage CreateJob(ctx, optional)

Creates a job

Creates a job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***CreateJobOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a CreateJobOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobIn** | [**optional.Interface of JobIn**](JobIn.md)|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteJob

> SingleJobMessage DeleteJob(ctx, id)

Deletes a job

Deletes a job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJob

> SingleJobMessage GetJob(ctx, id)

Retrieves a single job

Retrieves a single job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobRuns

> JobRunArrayMessage GetJobRuns(ctx, id, optional)

Retrieve the runs for a job

Retrieve the runs for a job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 
 **optional** | ***GetJobRunsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetJobRunsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **succeeded** | **optional.Bool**|  | 
 **startDate** | **optional.String**|  | 
 **endDate** | **optional.String**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobs

> JobArrayMessage GetJobs(ctx, optional)

Retrieves jobs

Retrieves jobs

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetJobsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetJobsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | **optional.String**| Specify a comma-separated list of tags to search jobs by. | 
 **incexc** | **optional.String**|  | 
 **startDate** | **optional.String**| Specify a start date to search jobs by. | 
 **endDate** | **optional.String**| Specify an end date to search jobs by. | 
 **enabled** | **optional.Bool**| Search on whether a job is enabled or not. | 
 **succeeded** | **optional.Bool**| Search on whether a job&#39;s last run was successful or not. | 
 **running** | **optional.Bool**| Search on whether a job is currently running or not. | 
 **name** | **optional.String**| Search on a job&#39;s name. | 
 **searchTimezone** | **optional.String**| Search for jobs in a timezone. | 
 **command** | **optional.String**| Search for jobs by the command that they execute. | 
 **timezone** | **optional.String**|  | 
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 

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


## JobOccurrences

> OccurrenceMessage JobOccurrences(ctx, id, endDate, optional)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The id of the job to retrieve occurrences for | 
**endDate** | **string**| The date to retrieve occurrences up to | 
 **optional** | ***JobOccurrencesOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a JobOccurrencesOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 
 **timezone** | **optional.String**|  | 

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RunJobNow

> RunJobNow(ctx, id)

Run a job now

Queues a job to run now

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**| The id of the job to execute now | 

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateJob

> SingleJobMessage UpdateJob(ctx, id, optional)

Updates a single job

Updates a single job

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 
 **optional** | ***UpdateJobOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a UpdateJobOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jobIn** | [**optional.Interface of JobIn**](JobIn.md)|  | 

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

