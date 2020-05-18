# JobsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createJob**](JobsApi.md#createJob) | **POST** /job_api | Creates a job
[**deleteJob**](JobsApi.md#deleteJob) | **DELETE** /job_api/{id} | Deletes a job
[**getJob**](JobsApi.md#getJob) | **GET** /job_api/{id} | Retrieves a single job
[**getJobRuns**](JobsApi.md#getJobRuns) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
[**getJobs**](JobsApi.md#getJobs) | **GET** /job_api | Retrieves jobs
[**jobOccurrences**](JobsApi.md#jobOccurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
[**runJobNow**](JobsApi.md#runJobNow) | **POST** /job_api/{id}/run_now | Run a job now
[**updateJob**](JobsApi.md#updateJob) | **PUT** /job_api/{id} | Updates a single job


<a name="createJob"></a>
# **createJob**
> SingleJobMessage createJob(jobIn)

Creates a job

Creates a job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    JobIn jobIn = new JobIn(); // JobIn | 
    try {
      SingleJobMessage result = apiInstance.createJob(jobIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#createJob");
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
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional]

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Job created successfully. |  -  |
**400** | Invalid timezone name. |  -  |
**409** | A job with this name already exists. |  -  |

<a name="deleteJob"></a>
# **deleteJob**
> SingleJobMessage deleteJob(id)

Deletes a job

Deletes a job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | 
    try {
      SingleJobMessage result = apiInstance.deleteJob(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#deleteJob");
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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job %{id} deleted successfully. |  -  |
**409** | Job &#39;%{id}&#39; cannot be deleted because it&#39;s running. Try disabling it first. |  -  |
**404** | Job not found. |  -  |

<a name="getJob"></a>
# **getJob**
> SingleJobMessage getJob(id)

Retrieves a single job

Retrieves a single job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | 
    try {
      SingleJobMessage result = apiInstance.getJob(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#getJob");
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

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job returned successfully |  -  |
**404** | Job not found. |  -  |

<a name="getJobRuns"></a>
# **getJobRuns**
> JobRunArrayMessage getJobRuns(id, perPage, page, succeeded, startDate, endDate, timezone)

Retrieve the runs for a job

Retrieve the runs for a job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | 
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    Boolean succeeded = true; // Boolean | 
    String startDate = "startDate_example"; // String | 
    String endDate = "endDate_example"; // String | 
    String timezone = "timezone_example"; // String | 
    try {
      JobRunArrayMessage result = apiInstance.getJobRuns(id, perPage, page, succeeded, startDate, endDate, timezone);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#getJobRuns");
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
 **succeeded** | **Boolean**|  | [optional]
 **startDate** | **String**|  | [optional]
 **endDate** | **String**|  | [optional]
 **timezone** | **String**|  | [optional]

### Return type

[**JobRunArrayMessage**](JobRunArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Runs received successfully. |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

<a name="getJobs"></a>
# **getJobs**
> JobArrayMessage getJobs(tags, incexc, startDate, endDate, enabled, succeeded, running, name, searchTimezone, command, timezone, perPage, page)

Retrieves jobs

Retrieves jobs

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    String tags = "tags_example"; // String | Specify a comma-separated list of tags to search jobs by.
    String incexc = "incexc_example"; // String | 
    String startDate = "startDate_example"; // String | Specify a start date to search jobs by.
    String endDate = "endDate_example"; // String | Specify an end date to search jobs by.
    Boolean enabled = true; // Boolean | Search on whether a job is enabled or not.
    Boolean succeeded = true; // Boolean | Search on whether a job's last run was successful or not.
    Boolean running = true; // Boolean | Search on whether a job is currently running or not.
    String name = "name_example"; // String | Search on a job's name.
    String searchTimezone = "searchTimezone_example"; // String | Search for jobs in a timezone.
    String command = "command_example"; // String | Search for jobs by the command that they execute.
    String timezone = "timezone_example"; // String | 
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    try {
      JobArrayMessage result = apiInstance.getJobs(tags, incexc, startDate, endDate, enabled, succeeded, running, name, searchTimezone, command, timezone, perPage, page);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#getJobs");
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
 **tags** | **String**| Specify a comma-separated list of tags to search jobs by. | [optional]
 **incexc** | **String**|  | [optional] [enum: all, any, except]
 **startDate** | **String**| Specify a start date to search jobs by. | [optional]
 **endDate** | **String**| Specify an end date to search jobs by. | [optional]
 **enabled** | **Boolean**| Search on whether a job is enabled or not. | [optional]
 **succeeded** | **Boolean**| Search on whether a job&#39;s last run was successful or not. | [optional]
 **running** | **Boolean**| Search on whether a job is currently running or not. | [optional]
 **name** | **String**| Search on a job&#39;s name. | [optional]
 **searchTimezone** | **String**| Search for jobs in a timezone. | [optional]
 **command** | **String**| Search for jobs by the command that they execute. | [optional]
 **timezone** | **String**|  | [optional]
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
**200** | Jobs returned successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

<a name="jobOccurrences"></a>
# **jobOccurrences**
> OccurrenceMessage jobOccurrences(id, endDate, perPage, page, timezone)

Upcoming job occurrences

Retrieves a list of upcoming occurrences for a job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | The id of the job to retrieve occurrences for
    String endDate = "endDate_example"; // String | The date to retrieve occurrences up to
    Integer perPage = 56; // Integer | 
    Integer page = 56; // Integer | 
    String timezone = "timezone_example"; // String | 
    try {
      OccurrenceMessage result = apiInstance.jobOccurrences(id, endDate, perPage, page, timezone);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#jobOccurrences");
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
 **id** | **Integer**| The id of the job to retrieve occurrences for |
 **endDate** | **String**| The date to retrieve occurrences up to |
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]
 **timezone** | **String**|  | [optional]

### Return type

[**OccurrenceMessage**](OccurrenceMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Occurrences received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |
**404** | Job not found |  -  |

<a name="runJobNow"></a>
# **runJobNow**
> runJobNow(id)

Run a job now

Queues a job to run now

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | The id of the job to execute now
    try {
      apiInstance.runJobNow(id);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#runJobNow");
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
 **id** | **Integer**| The id of the job to execute now |

### Return type

null (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job queued to execute |  -  |
**404** | Job not found |  -  |
**409** | Job is already running |  -  |

<a name="updateJob"></a>
# **updateJob**
> SingleJobMessage updateJob(id, jobIn)

Updates a single job

Updates a single job

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.JobsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    JobsApi apiInstance = new JobsApi(defaultClient);
    Integer id = 56; // Integer | 
    JobIn jobIn = new JobIn(); // JobIn | 
    try {
      SingleJobMessage result = apiInstance.updateJob(id, jobIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling JobsApi#updateJob");
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
 **jobIn** | [**JobIn**](JobIn.md)|  | [optional]

### Return type

[**SingleJobMessage**](SingleJobMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Job updated successfully. |  -  |
**409** | Job could not be updated. |  -  |
**404** | Job not found. |  -  |

