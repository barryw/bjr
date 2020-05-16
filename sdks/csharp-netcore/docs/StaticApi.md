# BJR.Api.StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTags**](StaticApi.md#gettags) | **GET** /tags | Get tags
[**GetTimezones**](StaticApi.md#gettimezones) | **GET** /timezones | Get timezones
[**GetVersion**](StaticApi.md#getversion) | **GET** /version | Server version


<a name="gettags"></a>
# **GetTags**
> TagMessage GetTags (int? perPage = null, int? page = null)

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetTagsExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new StaticApi(config);
            var perPage = 56;  // int? |  (optional) 
            var page = 56;  // int? |  (optional) 

            try
            {
                // Get tags
                TagMessage result = apiInstance.GetTags(perPage, page);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StaticApi.GetTags: " + e.Message );
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
 **perPage** | **int?**|  | [optional] 
 **page** | **int?**|  | [optional] 

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
| **200** | Tags received successfully |  * per-page - The number of items in this page. <br>  * total - The total number of items available. <br>  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="gettimezones"></a>
# **GetTimezones**
> TimezoneMessage GetTimezones ()

Get timezones

Get the list of acceptable timezone names.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetTimezonesExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            // Configure Bearer token for authorization: bearerAuth
            config.AccessToken = "YOUR_BEARER_TOKEN";

            var apiInstance = new StaticApi(config);

            try
            {
                // Get timezones
                TimezoneMessage result = apiInstance.GetTimezones();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StaticApi.GetTimezones: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
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
| **200** | Timezones received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="getversion"></a>
# **GetVersion**
> ServerVersion GetVersion ()

Server version

The BJR server version

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetVersionExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "http://localhost";
            var apiInstance = new StaticApi(config);

            try
            {
                // Server version
                ServerVersion result = apiInstance.GetVersion();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling StaticApi.GetVersion: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
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
| **200** | Server version received successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

