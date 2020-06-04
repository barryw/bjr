# \JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_job**](JobsApi.md#create_job) | **Post** /job_api | Creates a job
[**delete_job**](JobsApi.md#delete_job) | **Delete** /job_api/{id} | Deletes a job
[**get_job**](JobsApi.md#get_job) | **Get** /job_api/{id} | Retrieves a single job
[**get_job_runs**](JobsApi.md#get_job_runs) | **Get** /job_api/{id}/runs | Retrieve the runs for a job
[**get_jobs**](JobsApi.md#get_jobs) | **Get** /job_api | Retrieves jobs
[**job_occurrences**](JobsApi.md#job_occurrences) | **Get** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**run_job_now**](JobsApi.md#run_job_now) | **Post** /job_api/{id}/run_now | Run a job now
[**update_job**](JobsApi.md#update_job) | **Put** /job_api/{id} | Updates a single job



## create_job

> crate::models::SingleJobMessage create_job(job_in)
Creates a job

Creates a job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**job_in** | Option<[**JobIn**](JobIn.md)> |  |  |

### Return type

[**crate::models::SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_job

> crate::models::SingleJobMessage delete_job(id)
Deletes a job

Deletes a job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_job

> crate::models::SingleJobMessage get_job(id)
Retrieves a single job

Retrieves a single job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_job_runs

> crate::models::JobRunArrayMessage get_job_runs(id, per_page, page, succeeded, start_date, end_date, timezone)
Retrieve the runs for a job

Retrieve the runs for a job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**succeeded** | Option<**bool**> |  |  |
**start_date** | Option<**String**> |  |  |
**end_date** | Option<**String**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_jobs

> crate::models::JobArrayMessage get_jobs(tags, incexc, start_date, end_date, enabled, succeeded, running, name, search_timezone, command, timezone, per_page, page)
Retrieves jobs

Retrieves jobs

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**tags** | Option<**String**> | Specify a comma-separated list of tags to search jobs by. |  |
**incexc** | Option<**String**> |  |  |
**start_date** | Option<**String**> | Specify a start date to search jobs by. |  |
**end_date** | Option<**String**> | Specify an end date to search jobs by. |  |
**enabled** | Option<**bool**> | Search on whether a job is enabled or not. |  |
**succeeded** | Option<**bool**> | Search on whether a job's last run was successful or not. |  |
**running** | Option<**bool**> | Search on whether a job is currently running or not. |  |
**name** | Option<**String**> | Search on a job's name. |  |
**search_timezone** | Option<**String**> | Search for jobs in a timezone. |  |
**command** | Option<**String**> | Search for jobs by the command that they execute. |  |
**timezone** | Option<**String**> |  |  |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |

### Return type

[**crate::models::JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## job_occurrences

> crate::models::OccurrenceMessage job_occurrences(id, end_date, per_page, page, timezone)
Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the job to retrieve occurrences for | [required] |
**end_date** | **String** | The date to retrieve occurrences up to | [required] |
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |
**timezone** | Option<**String**> |  |  |

### Return type

[**crate::models::OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## run_job_now

> run_job_now(id)
Run a job now

Queues a job to run now

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the job to execute now | [required] |

### Return type

 (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_job

> crate::models::SingleJobMessage update_job(id, job_in)
Updates a single job

Updates a single job

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**job_in** | Option<[**JobIn**](JobIn.md)> |  |  |

### Return type

[**crate::models::SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

