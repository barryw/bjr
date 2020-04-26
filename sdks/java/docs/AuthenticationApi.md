# AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthenticationApi.md#authenticateUser) | **POST** /authenticate | Authenticates a user and returns a token


<a name="authenticateUser"></a>
# **authenticateUser**
> AuthOut authenticateUser(authIn)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example
```java
// Import classes:
import io.barrywalker.bjr.ApiClient;
import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.Configuration;
import io.barrywalker.bjr.models.*;
import io.barrywalker.bjr.api.AuthenticationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");

    AuthenticationApi apiInstance = new AuthenticationApi(defaultClient);
    AuthIn authIn = new AuthIn(); // AuthIn | 
    try {
      AuthOut result = apiInstance.authenticateUser(authIn);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AuthenticationApi#authenticateUser");
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
 **authIn** | [**AuthIn**](AuthIn.md)|  | [optional]

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User authenticated successfully |  -  |
**401** | User failed authentication |  -  |

