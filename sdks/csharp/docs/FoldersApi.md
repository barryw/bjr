# BJR.Api.FoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateFolder**](FoldersApi.md#createfolder) | **POST** /folder_api | Create a new Folder
[**DeleteFolder**](FoldersApi.md#deletefolder) | **DELETE** /folder_api/{id} | Delete an existing folder
[**GetFolder**](FoldersApi.md#getfolder) | **GET** /folder_api/{id} | Return a single folder
[**GetFolderJobs**](FoldersApi.md#getfolderjobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder
[**GetFolders**](FoldersApi.md#getfolders) | **GET** /folder_api | Return paginated list of all folders
[**UpdateFolder**](FoldersApi.md#updatefolder) | **PUT** /folder_api/{id} | Update an existing folder



## CreateFolder

> SingleFolderMessage CreateFolder (string name, string expression)

Create a new Folder

Create a new Folder

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class CreateFolderExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var name = name_example;  // string | 
            var expression = expression_example;  // string | 

            try
            {
                // Create a new Folder
                SingleFolderMessage result = apiInstance.CreateFolder(name, expression);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.CreateFolder: " + e.Message );
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
 **name** | **string**|  | 
 **expression** | **string**|  | 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Folder created successfully |  -  |
| **422** | Failed to create new folder |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFolder

> SingleFolderMessage DeleteFolder (int id)

Delete an existing folder

Delete an existing folder

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class DeleteFolderExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var id = 56;  // int | 

            try
            {
                // Delete an existing folder
                SingleFolderMessage result = apiInstance.DeleteFolder(id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.DeleteFolder: " + e.Message );
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

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Folder deleted successfully |  -  |
| **404** | Folder not found |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFolder

> SingleFolderMessage GetFolder (int id)

Return a single folder

Return a single folder

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetFolderExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var id = 56;  // int | 

            try
            {
                // Return a single folder
                SingleFolderMessage result = apiInstance.GetFolder(id);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.GetFolder: " + e.Message );
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

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Folder returned successfully |  -  |
| **404** | Folder not found |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFolderJobs

> JobArrayMessage GetFolderJobs (int id, int perPage = null, int page = null)

Return list of jobs in a folder

Return list of jobs in a folder

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetFolderJobsExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var id = 56;  // int | 
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 

            try
            {
                // Return list of jobs in a folder
                JobArrayMessage result = apiInstance.GetFolderJobs(id, perPage, page);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.GetFolderJobs: " + e.Message );
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
| **200** | Jobs returned successfully |  -  |
| **404** | Folder not found |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFolders

> FolderArrayMessage GetFolders (int perPage = null, int page = null)

Return paginated list of all folders

Return paginated list of all folders

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetFoldersExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var perPage = 56;  // int |  (optional) 
            var page = 56;  // int |  (optional) 

            try
            {
                // Return paginated list of all folders
                FolderArrayMessage result = apiInstance.GetFolders(perPage, page);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.GetFolders: " + e.Message );
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
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Folders returned successfully |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateFolder

> SingleFolderMessage UpdateFolder (int id, string name = null, string expression = null)

Update an existing folder

Update an existing folder

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class UpdateFolderExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new FoldersApi(Configuration.Default);
            var id = 56;  // int | 
            var name = name_example;  // string |  (optional) 
            var expression = expression_example;  // string |  (optional) 

            try
            {
                // Update an existing folder
                SingleFolderMessage result = apiInstance.UpdateFolder(id, name, expression);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling FoldersApi.UpdateFolder: " + e.Message );
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
 **name** | **string**|  | [optional] 
 **expression** | **string**|  | [optional] 

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Folder updated successfully |  -  |
| **404** | Folder not found |  -  |
| **422** | Failed to update folder |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

