# BJR.api.FoldersApi

## Load the API package
```dart
import 'package:BJR/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFolder**](FoldersApi.md#createfolder) | **post** /folder_api | Create a new Folder
[**deleteFolder**](FoldersApi.md#deletefolder) | **delete** /folder_api/{id} | Delete an existing folder
[**getFolder**](FoldersApi.md#getfolder) | **get** /folder_api/{id} | Return a single folder
[**getFolderJobs**](FoldersApi.md#getfolderjobs) | **get** /folder_api/{id}/jobs | Return list of jobs in a folder
[**getFolders**](FoldersApi.md#getfolders) | **get** /folder_api | Return paginated list of all folders
[**updateFolder**](FoldersApi.md#updatefolder) | **put** /folder_api/{id} | Update an existing folder


# **createFolder**
> SingleFolderMessage createFolder(name, expression)

Create a new Folder

Create a new Folder

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var name = name_example; // String | 
var expression = expression_example; // String | 

try { 
    var result = api_instance.createFolder(name, expression);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->createFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **expression** | **String**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFolder**
> SingleFolderMessage deleteFolder(id)

Delete an existing folder

Delete an existing folder

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var id = 56; // int | 

try { 
    var result = api_instance.deleteFolder(id);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->deleteFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolder**
> SingleFolderMessage getFolder(id)

Return a single folder

Return a single folder

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var id = 56; // int | 

try { 
    var result = api_instance.getFolder(id);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->getFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolderJobs**
> JobArrayMessage getFolderJobs(id, perPage, page)

Return list of jobs in a folder

Return list of jobs in a folder

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var id = 56; // int | 
var perPage = 56; // int | 
var page = 56; // int | 

try { 
    var result = api_instance.getFolderJobs(id, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->getFolderJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFolders**
> FolderArrayMessage getFolders(perPage, page)

Return paginated list of all folders

Return paginated list of all folders

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var perPage = 56; // int | 
var page = 56; // int | 

try { 
    var result = api_instance.getFolders(perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->getFolders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFolder**
> SingleFolderMessage updateFolder(id, name, expression)

Update an existing folder

Update an existing folder

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new FoldersApi();
var id = 56; // int | 
var name = name_example; // String | 
var expression = expression_example; // String | 

try { 
    var result = api_instance.updateFolder(id, name, expression);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->updateFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **name** | **String**|  | [optional] 
 **expression** | **String**|  | [optional] 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

