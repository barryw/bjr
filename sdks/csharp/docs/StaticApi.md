# BJR.Api.StaticApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTags**](StaticApi.md#gettags) | **GET** /static_api/timezones | Get timezones
[**GetTags_0**](StaticApi.md#gettags_0) | **GET** /static_api/tags | Get tags

<a name="gettags"></a>
# **GetTags**
> StringArray GetTags ()

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
    public class GetTagsExample
    {
        public void main()
        {

            var apiInstance = new StaticApi();

            try
            {
                // Get timezones
                StringArray result = apiInstance.GetTags();
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

[**StringArray**](StringArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="gettags_0"></a>
# **GetTags_0**
> TagArray GetTags_0 ()

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
    public class GetTags_0Example
    {
        public void main()
        {

            var apiInstance = new StaticApi();

            try
            {
                // Get tags
                TagArray result = apiInstance.GetTags_0();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StaticApi.GetTags_0: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TagArray**](TagArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
