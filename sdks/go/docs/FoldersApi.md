# \FoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateFolder**](FoldersApi.md#CreateFolder) | **Post** /folder_api | Create a new Folder
[**DeleteFolder**](FoldersApi.md#DeleteFolder) | **Delete** /folder_api/{id} | Delete an existing folder
[**GetFolder**](FoldersApi.md#GetFolder) | **Get** /folder_api/{id} | Return a single folder
[**GetFolderJobs**](FoldersApi.md#GetFolderJobs) | **Get** /folder_api/{id}/jobs | Return list of jobs in a folder
[**GetFolders**](FoldersApi.md#GetFolders) | **Get** /folder_api | Return paginated list of all folders
[**UpdateFolder**](FoldersApi.md#UpdateFolder) | **Put** /folder_api/{id} | Update an existing folder



## CreateFolder

> SingleFolderMessage CreateFolder(ctx, name, expression)

Create a new Folder

Create a new Folder

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string**|  | 
**expression** | **string**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFolder

> SingleFolderMessage DeleteFolder(ctx, id)

Delete an existing folder

Delete an existing folder

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFolder

> SingleFolderMessage GetFolder(ctx, id)

Return a single folder

Return a single folder

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFolderJobs

> JobArrayMessage GetFolderJobs(ctx, id, optional)

Return list of jobs in a folder

Return list of jobs in a folder

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 
 **optional** | ***GetFolderJobsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetFolderJobsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

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


## GetFolders

> FolderArrayMessage GetFolders(ctx, optional)

Return paginated list of all folders

Return paginated list of all folders

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetFoldersOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetFoldersOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **optional.Int32**|  | 
 **page** | **optional.Int32**|  | 

### Return type

[**FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateFolder

> SingleFolderMessage UpdateFolder(ctx, id, optional)

Update an existing folder

Update an existing folder

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32**|  | 
 **optional** | ***UpdateFolderOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a UpdateFolderOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **name** | **optional.String**|  | 
 **expression** | **optional.String**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

