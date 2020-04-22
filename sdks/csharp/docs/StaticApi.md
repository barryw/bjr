# BJR.Api.StaticApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTags**](StaticApi.md#gettags) | **GET** /static_api/tags | Get tags
[**GetTimezones**](StaticApi.md#gettimezones) | **GET** /static_api/timezones | Get timezones

<a name="gettags"></a>
# **GetTags**
> TagMessage GetTags ()

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetTagsExample
    {
        public void main()
        {

            var apiInstance = new StaticApi();

            try
            {
                // Get tags
                TagMessage result = apiInstance.GetTags();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StaticApi.GetTags: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="gettimezones"></a>
# **GetTimezones**
> TimezoneMessage GetTimezones ()

Get timezones

Get the list of acceptable timezone names.

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetTimezonesExample
    {
        public void main()
        {

            var apiInstance = new StaticApi();

            try
            {
                // Get timezones
                TimezoneMessage result = apiInstance.GetTimezones();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StaticApi.GetTimezones: " + e.Message );
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
