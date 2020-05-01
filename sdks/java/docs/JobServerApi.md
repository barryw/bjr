# JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**statsByHour**](JobServerApi.md#statsByHour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**statsByMinute**](JobServerApi.md#statsByMinute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**upcomingJobs**](JobServerApi.md#upcomingJobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs


<a name="recentJobs"></a>
# **recentJobs**
> JobArrayMessage recentJobs(count)

List of recent jobs

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

<a name="statsByHour"></a>
# **statsByHour**
> JobStatMessage statsByHour()

Job statistics by hour

Get hourly job statistics for the day

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
    try {
      JobStatMessage result = apiInstance.statsByHour();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#statsByHour");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Hourly stats received successfully |  -  |

<a name="statsByMinute"></a>
# **statsByMinute**
> JobStatMessage statsByMinute(count)

Job statistics by minute

Get minutely job statistics

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
    Integer count = 56; // Integer | The number of stats to return (max 60)
    try {
      JobStatMessage result = apiInstance.statsByMinute(count);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#statsByMinute");
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
 **count** | **Integer**| The number of stats to return (max 60) | [optional]

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Minutely stats received successfully |  -  |
**406** | Too many minutes specified |  -  |

<a name="upcomingJobs"></a>
# **upcomingJobs**
> JobArrayMessage upcomingJobs(count)

List of upcoming jobs

A list of jobs that are about to execute

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
      JobArrayMessage result = apiInstance.upcomingJobs(count);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#upcomingJobs");
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
**200** | Upcoming job list returned successfully |  -  |
**406** | Too many jobs specified |  -  |

