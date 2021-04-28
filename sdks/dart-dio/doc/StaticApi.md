# BJR.api.StaticApi

## Load the API package
```dart
import 'package:BJR/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTags**](StaticApi.md#gettags) | **get** /tags | Get tags
[**getTimezones**](StaticApi.md#gettimezones) | **get** /timezones | Get timezones
[**getVersion**](StaticApi.md#getversion) | **get** /version | Server version


# **getTags**
> TagMessage getTags(perPage, page)

Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new StaticApi();
var perPage = 56; // int | 
var page = 56; // int | 

try { 
    var result = api_instance.getTags(perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

[**TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezones**
> TimezoneMessage getTimezones()

Get timezones

Get the list of acceptable timezone names.

### Example 
```dart
import 'package:BJR/api.dart';
// TODO Configure HTTP basic authorization: bearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('bearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new StaticApi();

try { 
    var result = api_instance.getTimezones();
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getTimezones: $e\n');
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

# **getVersion**
> ServerVersion getVersion()

Server version

The BJR server version

### Example 
```dart
import 'package:BJR/api.dart';

var api_instance = new StaticApi();

try { 
    var result = api_instance.getVersion();
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getVersion: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

