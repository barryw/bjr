# JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recentJobs**](JobServerApi.md#recentJobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
[**statsByDay**](JobServerApi.md#statsByDay) | **GET** /job_server_api/daily_job_stats | Job statistics by day
[**statsByHour**](JobServerApi.md#statsByHour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
[**statsByMinute**](JobServerApi.md#statsByMinute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
[**statsByWeek**](JobServerApi.md#statsByWeek) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
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

<a name="statsByDay"></a>
# **statsByDay**
> JobStatMessage statsByDay(startDate, endDate, perPage, page, timezone)

Job statistics by day

Get daily job statistics

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
    String startDate = "startDate_example"; // String | The start date from which to get daily metrics from
    String endDate = "endDate_example"; // String | The end date from which to get daily metrics from
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    String timezone = "timezone_example"; // String | 
    try {
      JobStatMessage result = apiInstance.statsByDay(startDate, endDate, perPage, page, timezone);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#statsByDay");
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
 **startDate** | **String**| The start date from which to get daily metrics from | [optional]
 **endDate** | **String**| The end date from which to get daily metrics from | [optional]
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]
 **timezone** | **String**|  | [optional]

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
**200** | Daily stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

<a name="statsByHour"></a>
# **statsByHour**
> JobStatMessage statsByHour(startDate, endDate, perPage, page, timezone)

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
    String startDate = "startDate_example"; // String | The start date from which to get hourly metrics from
    String endDate = "endDate_example"; // String | The end date from which to get hourly metrics from
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    String timezone = "timezone_example"; // String | 
    try {
      JobStatMessage result = apiInstance.statsByHour(startDate, endDate, perPage, page, timezone);
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

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| The start date from which to get hourly metrics from | [optional]
 **endDate** | **String**| The end date from which to get hourly metrics from | [optional]
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]
 **timezone** | **String**|  | [optional]

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
**200** | Hourly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

<a name="statsByMinute"></a>
# **statsByMinute**
> JobStatMessage statsByMinute(startDate, endDate, perPage, page, timezone)

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
    String startDate = "startDate_example"; // String | The start date from which to get minutely metrics from
    String endDate = "endDate_example"; // String | The end date from which to get minutely metrics from
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    String timezone = "timezone_example"; // String | 
    try {
      JobStatMessage result = apiInstance.statsByMinute(startDate, endDate, perPage, page, timezone);
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
 **startDate** | **String**| The start date from which to get minutely metrics from | [optional]
 **endDate** | **String**| The end date from which to get minutely metrics from | [optional]
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]
 **timezone** | **String**|  | [optional]

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
**200** | Minutely stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

<a name="statsByWeek"></a>
# **statsByWeek**
> JobStatMessage statsByWeek(startDate, endDate, perPage, page, timezone)

Job statistics by week

Get weekly job statistics

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
    String startDate = "startDate_example"; // String | The start date from which to get weekly metrics from
    String endDate = "endDate_example"; // String | The end date from which to get weekly metrics from
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    String timezone = "timezone_example"; // String | 
    try {
      JobStatMessage result = apiInstance.statsByWeek(startDate, endDate, perPage, page, timezone);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobServerApi#statsByWeek");
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
 **startDate** | **String**| The start date from which to get weekly metrics from | [optional]
 **endDate** | **String**| The end date from which to get weekly metrics from | [optional]
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]
 **timezone** | **String**|  | [optional]

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
**200** | Weekly stats received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

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

