# BJR.Api.UsersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateUser**](UsersApi.md#createuser) | **POST** /user_api | Creates a user
[**DeleteUser**](UsersApi.md#deleteuser) | **DELETE** /user_api/{id} | Deletes a user
[**GetUser**](UsersApi.md#getuser) | **GET** /user_api/{id} | Retrieve a single user
[**GetUsers**](UsersApi.md#getusers) | **GET** /user_api | Retrieves users
[**UpdateUser**](UsersApi.md#updateuser) | **PUT** /user_api/{id} | Update a single user

<a name="createuser"></a>
# **CreateUser**
> UserOut CreateUser (UserNewIn body = null)

Creates a user

Create a new user

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class CreateUserExample
    {
        public void main()
        {

            var apiInstance = new UsersApi();
            var body = new UserNewIn(); // UserNewIn |  (optional) 

            try
            {
                // Creates a user
                UserOut result = apiInstance.CreateUser(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.CreateUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserNewIn**](UserNewIn.md)|  | [optional] 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="deleteuser"></a>
# **DeleteUser**
> UserOut DeleteUser (int? id)

Deletes a user

Deletes a user

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class DeleteUserExample
    {
        public void main()
        {

            var apiInstance = new UsersApi();
            var id = 56;  // int? | 

            try
            {
                // Deletes a user
                UserOut result = apiInstance.DeleteUser(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.DeleteUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getuser"></a>
# **GetUser**
> SingleUser GetUser (int? id)

Retrieve a single user

Retrieve a single user

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetUserExample
    {
        public void main()
        {

            var apiInstance = new UsersApi();
            var id = 56;  // int? | 

            try
            {
                // Retrieve a single user
                SingleUser result = apiInstance.GetUser(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getusers"></a>
# **GetUsers**
> UserArray GetUsers ()

Retrieves users

Get a list of users

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class GetUsersExample
    {
        public void main()
        {

            var apiInstance = new UsersApi();

            try
            {
                // Retrieves users
                UserArray result = apiInstance.GetUsers();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.GetUsers: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserArray**](UserArray.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="updateuser"></a>
# **UpdateUser**
> UserOut UpdateUser (int? id, UserUpdateIn body = null)

Update a single user

Update a single user

### Example
```csharp
using System;
using System.Diagnostics;
using BJR.Api;
using BJR.Client;
using BJR.Model;

namespace Example
{
    public class UpdateUserExample
    {
        public void main()
        {

            var apiInstance = new UsersApi();
            var id = 56;  // int? | 
            var body = new UserUpdateIn(); // UserUpdateIn |  (optional) 

            try
            {
                // Update a single user
                UserOut result = apiInstance.UpdateUser(id, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling UsersApi.UpdateUser: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional] 

### Return type

[**UserOut**](UserOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
