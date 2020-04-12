# DefaultApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticatePost**](DefaultApi.md#authenticatePost) | **POST** /authenticate | Authenticates a user and returns a token
[**jobApiGet**](DefaultApi.md#jobApiGet) | **GET** /job_api | Retrieves jobs
[**jobApiIdDelete**](DefaultApi.md#jobApiIdDelete) | **DELETE** /job_api/{id} | Deletes a job
[**jobApiIdGet**](DefaultApi.md#jobApiIdGet) | **GET** /job_api/{id} | Retrieves a single job
[**jobApiIdPut**](DefaultApi.md#jobApiIdPut) | **PUT** /job_api/{id} | Updates a single job
[**jobApiPost**](DefaultApi.md#jobApiPost) | **POST** /job_api | Creates a job
[**userApiGet**](DefaultApi.md#userApiGet) | **GET** /user_api | Retrieves users
[**userApiIdDelete**](DefaultApi.md#userApiIdDelete) | **DELETE** /user_api/{id} | Deletes a user
[**userApiIdGet**](DefaultApi.md#userApiIdGet) | **GET** /user_api/{id} | Retrieve a single user
[**userApiIdPut**](DefaultApi.md#userApiIdPut) | **PUT** /user_api/{id} | Update a single user
[**userApiPost**](DefaultApi.md#userApiPost) | **POST** /user_api | Creates a user

<a name="authenticatePost"></a>
# **authenticatePost**
> AuthOut authenticatePost(body)

Authenticates a user and returns a token

### Example
```java
// Import classes:
//import BJR.ApiException;
//import Api.DefaultApi;


DefaultApi apiInstance = new DefaultApi();
AuthIn body = new AuthIn(); // AuthIn | 
try {
    AuthOut result = apiInstance.authenticatePost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#authenticatePost");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthIn**](AuthIn.md)|  | [optional]

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="jobApiGet"></a>
# **jobApiGet**
> JobArray jobApiGet(tags, incexc, startDate, endDate)

Retrieves jobs

Retrieves jobs

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
String tags = "tags_example"; // String | Specify a comma-separated list of tags to search jobs by.
String incexc = "incexc_example"; // String | 
String startDate = "startDate_example"; // String | Specify a start date to search jobs by.
String endDate = "endDate_example"; // String | Specify an end date to search jobs by.
try {
    JobArray result = apiInstance.jobApiGet(tags, incexc, startDate, endDate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#jobApiGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | **String**| Specify a comma-separated list of tags to search jobs by. | [optional]
 **incexc** | **String**|  | [optional] [enum: all, any, except]
 **startDate** | **String**| Specify a start date to search jobs by. | [optional]
 **endDate** | **String**| Specify an end date to search jobs by. | [optional]

### Return type

[**JobArray**](JobArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="jobApiIdDelete"></a>
# **jobApiIdDelete**
> jobApiIdDelete(id)

Deletes a job

Deletes a job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
try {
    apiInstance.jobApiIdDelete(id);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#jobApiIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="jobApiIdGet"></a>
# **jobApiIdGet**
> SingleJob jobApiIdGet(id)

Retrieves a single job

Retrieves a single job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
try {
    SingleJob result = apiInstance.jobApiIdGet(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#jobApiIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

[**SingleJob**](SingleJob.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="jobApiIdPut"></a>
# **jobApiIdPut**
> JobOut jobApiIdPut(id, body)

Updates a single job

Updates a single job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
JobIn body = new JobIn(); // JobIn | 
try {
    JobOut result = apiInstance.jobApiIdPut(id, body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#jobApiIdPut");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **body** | [**JobIn**](JobIn.md)|  | [optional]

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="jobApiPost"></a>
# **jobApiPost**
> JobOut jobApiPost(body)

Creates a job

Creates a job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
JobIn body = new JobIn(); // JobIn | 
try {
    JobOut result = apiInstance.jobApiPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#jobApiPost");
    e.printStackTrace();
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

<a name="userApiGet"></a>
# **userApiGet**
> UserArray userApiGet()

Retrieves users

Get a list of users

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
try {
    UserArray result = apiInstance.userApiGet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#userApiGet");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserArray**](UserArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="userApiIdDelete"></a>
# **userApiIdDelete**
> UserOut userApiIdDelete(id)

Deletes a user

Deletes a user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
try {
    UserOut result = apiInstance.userApiIdDelete(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#userApiIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="userApiIdGet"></a>
# **userApiIdGet**
> SingleUser userApiIdGet(id)

Retrieve a single user

Retrieve a single user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
try {
    SingleUser result = apiInstance.userApiIdGet(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#userApiIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="userApiIdPut"></a>
# **userApiIdPut**
> UserOut userApiIdPut(id, body)

Update a single user

Update a single user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
Integer id = 56; // Integer | 
UserUpdateIn body = new UserUpdateIn(); // UserUpdateIn | 
try {
    UserOut result = apiInstance.userApiIdPut(id, body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#userApiIdPut");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **body** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional]

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="userApiPost"></a>
# **userApiPost**
> UserOut userApiPost(body)

Creates a user

Create a new user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.DefaultApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


DefaultApi apiInstance = new DefaultApi();
UserNewIn body = new UserNewIn(); // UserNewIn | 
try {
    UserOut result = apiInstance.userApiPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DefaultApi#userApiPost");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserNewIn**](UserNewIn.md)|  | [optional]

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

