# JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jobsPerDay**](JobServerApi.md#jobsPerDay) | **GET** /job_server_api/job_runs_per_day | Jobs Per Day
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/most_recent_jobs | Most Recent Jobs


<a name="jobsPerDay"></a>
# **jobsPerDay**
> JobsPerDay jobsPerDay(days)

Jobs Per Day

The number of jobs processed and failed by day

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobServerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobServerApi apiInstance = new JobServerApi(defaultClient);
    Integer days = 56; // Integer | The number of days to return (max 30)
    try {
      JobsPerDay result = apiInstance.jobsPerDay(days);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#jobsPerDay");
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
 **days** | **Integer**| The number of days to return (max 30) | [optional]

### Return type

[**JobsPerDay**](JobsPerDay.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job processed statistics received successfully |  -  |
**406** | Too many days specified |  -  |

<a name="recentJobs"></a>
# **recentJobs**
> JobArrayMessage recentJobs(count)

Most Recent Jobs

Get a list of the most recently run jobs

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobServerApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobServerApi apiInstance = new JobServerApi(defaultClient);
    Integer count = 56; // Integer | The number of jobs to return (max 20)
    try {
      JobArrayMessage result = apiInstance.recentJobs(count);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#recentJobs");
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
 **count** | **Integer**| The number of jobs to return (max 20) | [optional]

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
**200** | Jobs received successfully |  -  |
**406** | Too many jobs specified |  -  |

