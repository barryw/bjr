# BJR.Api.StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTags**](StaticApi.md#gettags) | **GET** /static_api/tags | Get tags
[**GetTimezones**](StaticApi.md#gettimezones) | **GET** /static_api/timezones | Get timezones
[**GetVersion**](StaticApi.md#getversion) | **GET** /version | Server version



## GetTags

> TagMessage GetTags ()

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
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new StaticApi(Configuration.Default);

            try
            {
                // Get tags
                TagMessage result = apiInstance.GetTags();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
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
| **200** | Tags received successfully |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetTimezones

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
            Configuration.Default.BasePath = "http://localhost";
            // Configure HTTP bearer authorization: bearerAuth
            Configuration.Default.AccessToken = "YOUR_ACCESS_TOKEN";

            var apiInstance = new StaticApi(Configuration.Default);

            try
            {
                // Get timezones
                TimezoneMessage result = apiInstance.GetTimezones();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVersion

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
            Configuration.Default.BasePath = "http://localhost";
            var apiInstance = new StaticApi(Configuration.Default);

            try
            {
                // Server version
                ServerVersion result = apiInstance.GetVersion();
                Debug.WriteLine(result);
            }
            catch (ApiException e)
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

