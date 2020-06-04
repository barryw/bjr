# \FoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_folder**](FoldersApi.md#create_folder) | **Post** /folder_api | Create a new Folder
[**delete_folder**](FoldersApi.md#delete_folder) | **Delete** /folder_api/{id} | Delete an existing folder
[**get_folder**](FoldersApi.md#get_folder) | **Get** /folder_api/{id} | Return a single folder
[**get_folder_jobs**](FoldersApi.md#get_folder_jobs) | **Get** /folder_api/{id}/jobs | Return list of jobs in a folder
[**get_folders**](FoldersApi.md#get_folders) | **Get** /folder_api | Return paginated list of all folders
[**update_folder**](FoldersApi.md#update_folder) | **Put** /folder_api/{id} | Update an existing folder



## create_folder

> crate::models::SingleFolderMessage create_folder(name, expression)
Create a new Folder

Create a new Folder

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**expression** | **String** |  | [required] |

### Return type

[**crate::models::SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_folder

> crate::models::SingleFolderMessage delete_folder(id)
Delete an existing folder

Delete an existing folder

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_folder

> crate::models::SingleFolderMessage get_folder(id)
Return a single folder

Return a single folder

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_folder_jobs

> crate::models::JobArrayMessage get_folder_jobs(id, per_page, page)
Return list of jobs in a folder

Return list of jobs in a folder

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
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


## get_folders

> crate::models::FolderArrayMessage get_folders(per_page, page)
Return paginated list of all folders

Return paginated list of all folders

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |

### Return type

[**crate::models::FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_folder

> crate::models::SingleFolderMessage update_folder(id, name, expression)
Update an existing folder

Update an existing folder

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**name** | Option<**String**> |  |  |
**expression** | Option<**String**> |  |  |

### Return type

[**crate::models::SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

