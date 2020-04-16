# BJR.Api.AuthenticationApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticateUser**](AuthenticationApi.md#authenticateuser) | **POST** /authenticate | Authenticates a user and returns a token

<a name="authenticateuser"></a>
# **AuthenticateUser**
> AuthOut AuthenticateUser (AuthIn body = null)

Authenticates a user and returns a token

Authenticates a user and returns a token

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class AuthenticateUserExample
    {
        public void main()
        {
            var apiInstance = new AuthenticationApi();
            var body = new AuthIn(); // AuthIn |  (optional) 

            try
            {
                // Authenticates a user and returns a token
                AuthOut result = apiInstance.AuthenticateUser(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AuthenticationApi.AuthenticateUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthIn**](AuthIn.md)|  | [optional] 

### Return type

[**AuthOut**](AuthOut.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
