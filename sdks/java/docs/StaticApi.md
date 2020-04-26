# StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTags**](StaticApi.md#getTags) | **GET** /static_api/tags | Get tags
[**getTimezones**](StaticApi.md#getTimezones) | **GET** /static_api/timezones | Get timezones
[**getVersion**](StaticApi.md#getVersion) | **GET** /version | Server version


<a name="getTags"></a>
# **getTags**
> TagMessage getTags()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.StaticApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    StaticApi apiInstance = new StaticApi(defaultClient);
    try {
      TagMessage result = apiInstance.getTags();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StaticApi#getTags");
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

[**TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tags received successfully |  -  |

<a name="getTimezones"></a>
# **getTimezones**
> TimezoneMessage getTimezones()

Get timezones

Get the list of acceptable timezone names.

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.auth.*;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.StaticApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP bearer authorization: bearerAuth
    HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
    bearerAuth.setBearerToken("BEARER TOKEN");

    StaticApi apiInstance = new StaticApi(defaultClient);
    try {
      TimezoneMessage result = apiInstance.getTimezones();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StaticApi#getTimezones");
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

[**TimezoneMessage**](TimezoneMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Timezones received successfully |  -  |

<a name="getVersion"></a>
# **getVersion**
> ServerVersion getVersion()

Server version

The BJR server version

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.StaticApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");

    StaticApi apiInstance = new StaticApi(defaultClient);
    try {
      ServerVersion result = apiInstance.getVersion();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling StaticApi#getVersion");
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

[**ServerVersion**](ServerVersion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Server version received successfully |  -  |

