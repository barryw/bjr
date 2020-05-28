# FoldersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFolder**](FoldersApi.md#createFolder) | **POST** /folder_api | Create a new Folder
[**deleteFolder**](FoldersApi.md#deleteFolder) | **DELETE** /folder_api/{id} | Delete an existing folder
[**getFolder**](FoldersApi.md#getFolder) | **GET** /folder_api/{id} | Return a single folder
[**getFolderJobs**](FoldersApi.md#getFolderJobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder
[**getFolders**](FoldersApi.md#getFolders) | **GET** /folder_api | Return paginated list of all folders
[**updateFolder**](FoldersApi.md#updateFolder) | **PUT** /folder_api/{id} | Update an existing folder


<a name="createFolder"></a>
# **createFolder**
> SingleFolderMessage createFolder(name, expression)

Create a new Folder

Create a new Folder

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    String name = "name_example"; // String | 
    String expression = "expression_example"; // String | 
    try {
      SingleFolderMessage result = apiInstance.createFolder(name, expression);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#createFolder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Folder created successfully |  -  |
**422** | Failed to create new folder |  -  |

<a name="deleteFolder"></a>
# **deleteFolder**
> SingleFolderMessage deleteFolder(id)

Delete an existing folder

Delete an existing folder

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    Integer id = 56; // Integer | 
    try {
      SingleFolderMessage result = apiInstance.deleteFolder(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#deleteFolder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

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
**200** | Folder deleted successfully |  -  |
**404** | Folder not found |  -  |

<a name="getFolder"></a>
# **getFolder**
> SingleFolderMessage getFolder(id)

Return a single folder

Return a single folder

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    Integer id = 56; // Integer | 
    try {
      SingleFolderMessage result = apiInstance.getFolder(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#getFolder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

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
**200** | Folder returned successfully |  -  |
**404** | Folder not found |  -  |

<a name="getFolderJobs"></a>
# **getFolderJobs**
> JobArrayMessage getFolderJobs(id, perPage, page)

Return list of jobs in a folder

Return list of jobs in a folder

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    Integer id = 56; // Integer | 
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    try {
      JobArrayMessage result = apiInstance.getFolderJobs(id, perPage, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#getFolderJobs");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]

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
**200** | Jobs returned successfully |  -  |
**404** | Folder not found |  -  |

<a name="getFolders"></a>
# **getFolders**
> FolderArrayMessage getFolders(perPage, page)

Return paginated list of all folders

Return paginated list of all folders

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    try {
      FolderArrayMessage result = apiInstance.getFolders(perPage, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#getFolders");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]

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
**200** | Folders returned successfully |  -  |

<a name="updateFolder"></a>
# **updateFolder**
> SingleFolderMessage updateFolder(id, name, expression)

Update an existing folder

Update an existing folder

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.FoldersApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    FoldersApi apiInstance = new FoldersApi(defaultClient);
    Integer id = 56; // Integer | 
    String name = "name_example"; // String | 
    String expression = "expression_example"; // String | 
    try {
      SingleFolderMessage result = apiInstance.updateFolder(id, name, expression);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling FoldersApi#updateFolder");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **name** | **String**|  | [optional]
 **expression** | **String**|  | [optional]

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
**200** | Folder updated successfully |  -  |
**404** | Folder not found |  -  |
**422** | Failed to update folder |  -  |

