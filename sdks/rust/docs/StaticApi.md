# \StaticApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tags**](StaticApi.md#get_tags) | **get** /tags | Get tags
[**get_timezones**](StaticApi.md#get_timezones) | **get** /timezones | Get timezones
[**get_version**](StaticApi.md#get_version) | **get** /version | Server version



## get_tags

> crate::models::TagMessage get_tags(per_page, page)
Get tags

Retrieves the list of tags that are currently in use for the authenticated user.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |

### Return type

[**crate::models::TagMessage**](TagMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_timezones

> crate::models::TimezoneMessage get_timezones()
Get timezones

Get the list of acceptable timezone names.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::TimezoneMessage**](TimezoneMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_version

> crate::models::ServerVersion get_version()
Server version

The BJR server version

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::ServerVersion**](ServerVersion.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

