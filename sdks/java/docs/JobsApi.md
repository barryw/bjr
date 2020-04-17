# JobsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **POST** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **DELETE** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **GET** /job_api/{id} | Retrieves a single job
[**getJobRuns**](JobsApi.md#getJobRuns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**getJobs**](JobsApi.md#getJobs) | **GET** /job_api | Retrieves jobs
[**updateJob**](JobsApi.md#updateJob) | **PUT** /job_api/{id} | Updates a single job

<a name="createJob"></a>
# **createJob**
> JobOut createJob(body)

Creates a job

Creates a job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
JobIn body = new JobIn(); // JobIn | 
try {
    JobOut result = apiInstance.createJob(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#createJob");
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

<a name="deleteJob"></a>
# **deleteJob**
> deleteJob(id)

Deletes a job

Deletes a job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
Integer id = 56; // Integer | 
try {
    apiInstance.deleteJob(id);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#deleteJob");
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

<a name="getJob"></a>
# **getJob**
> SingleJob getJob(id)

Retrieves a single job

Retrieves a single job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
Integer id = 56; // Integer | 
try {
    SingleJob result = apiInstance.getJob(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#getJob");
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

<a name="getJobRuns"></a>
# **getJobRuns**
> JobRunArray getJobRuns(id, perPage, page)

Retrieve the runs for a job

Retrieve the runs for a job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
Integer id = 56; // Integer | 
Integer perPage = 56; // Integer | 
Integer page = 56; // Integer | 
try {
    JobRunArray result = apiInstance.getJobRuns(id, perPage, page);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#getJobRuns");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]

### Return type

[**JobRunArray**](JobRunArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobs"></a>
# **getJobs**
> JobArray getJobs(tags, incexc, startDate, endDate, perPage, page)

Retrieves jobs

Retrieves jobs

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
String tags = "tags_example"; // String | Specify a comma-separated list of tags to search jobs by.
String incexc = "incexc_example"; // String | 
String startDate = "startDate_example"; // String | Specify a start date to search jobs by.
String endDate = "endDate_example"; // String | Specify an end date to search jobs by.
Integer perPage = 56; // Integer | 
Integer page = 56; // Integer | 
try {
    JobArray result = apiInstance.getJobs(tags, incexc, startDate, endDate, perPage, page);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#getJobs");
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
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]

### Return type

[**JobArray**](JobArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateJob"></a>
# **updateJob**
> JobOut updateJob(id, body)

Updates a single job

Updates a single job

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.JobsApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


JobsApi apiInstance = new JobsApi();
Integer id = 56; // Integer | 
JobIn body = new JobIn(); // JobIn | 
try {
    JobOut result = apiInstance.updateJob(id, body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling JobsApi#updateJob");
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

