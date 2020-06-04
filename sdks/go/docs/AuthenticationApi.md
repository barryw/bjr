# \AuthenticationApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticateUser**](AuthenticationApi.md#AuthenticateUser) | **Post** /authenticate | Authenticates a user and returns a token



## AuthenticateUser

> AuthOut AuthenticateUser(ctx, optional)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***AuthenticateUserOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AuthenticateUserOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authIn** | [**optional.Interface of AuthIn**](AuthIn.md)|  | 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

