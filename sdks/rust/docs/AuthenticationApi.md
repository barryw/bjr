# \AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_user**](AuthenticationApi.md#authenticate_user) | **post** /authenticate | Authenticates a user and returns a token



## authenticate_user

> crate::models::AuthOut authenticate_user(auth_in)
Authenticates a user and returns a token

Authenticates a user and returns a token

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**auth_in** | Option<[**AuthIn**](AuthIn.md)> |  |  |

### Return type

[**crate::models::AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

