# IO.Swagger.BJR.Api.DefaultApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticatePost**](DefaultApi.md#authenticatepost) | **POST** /authenticate | Authenticates a user and returns a token
[**JobApiGet**](DefaultApi.md#jobapiget) | **GET** /job_api | Retrieves jobs
[**JobApiIdDelete**](DefaultApi.md#jobapiiddelete) | **DELETE** /job_api/{id} | Deletes a job
[**JobApiIdGet**](DefaultApi.md#jobapiidget) | **GET** /job_api/{id} | Retrieves a single job
[**JobApiIdPut**](DefaultApi.md#jobapiidput) | **PUT** /job_api/{id} | Updates a single job
[**JobApiPost**](DefaultApi.md#jobapipost) | **POST** /job_api | Creates a job
[**UserApiGet**](DefaultApi.md#userapiget) | **GET** /user_api | Retrieves users
[**UserApiIdDelete**](DefaultApi.md#userapiiddelete) | **DELETE** /user_api/{id} | Deletes a user
[**UserApiIdGet**](DefaultApi.md#userapiidget) | **GET** /user_api/{id} | Retrieve a single user
[**UserApiIdPut**](DefaultApi.md#userapiidput) | **PUT** /user_api/{id} | Update a single user
[**UserApiPost**](DefaultApi.md#userapipost) | **POST** /user_api | Creates a user

<a name="authenticatepost"></a>
# **AuthenticatePost**
> AuthOut AuthenticatePost (AuthIn body = null)

Authenticates a user and returns a token

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class AuthenticatePostExample
    {
        public void main()
        {
            var apiInstance = new DefaultApi();
            var body = new AuthIn(); // AuthIn |  (optional) 

            try
            {
                // Authenticates a user and returns a token
                AuthOut result = apiInstance.AuthenticatePost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.AuthenticatePost: " + e.Message );
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
<a name="jobapiget"></a>
# **JobApiGet**
> void JobApiGet ()

Retrieves jobs

Retrieves jobs

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class JobApiGetExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();

            try
            {
                // Retrieves jobs
                apiInstance.JobApiGet();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.JobApiGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="jobapiiddelete"></a>
# **JobApiIdDelete**
> void JobApiIdDelete (int? id)

Deletes a job

Deletes a job

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class JobApiIdDeleteExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 

            try
            {
                // Deletes a job
                apiInstance.JobApiIdDelete(id);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.JobApiIdDelete: " + e.Message );
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

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="jobapiidget"></a>
# **JobApiIdGet**
> void JobApiIdGet (int? id)

Retrieves a single job

Retrieves a single job

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class JobApiIdGetExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 

            try
            {
                // Retrieves a single job
                apiInstance.JobApiIdGet(id);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.JobApiIdGet: " + e.Message );
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

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="jobapiidput"></a>
# **JobApiIdPut**
> JobOut JobApiIdPut (int? id, JobIn body = null)

Updates a single job

Updates a single job

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class JobApiIdPutExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 
            var body = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Updates a single job
                JobOut result = apiInstance.JobApiIdPut(id, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.JobApiIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="jobapipost"></a>
# **JobApiPost**
> JobOut JobApiPost (JobIn body = null)

Creates a job

Creates a job

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class JobApiPostExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var body = new JobIn(); // JobIn |  (optional) 

            try
            {
                // Creates a job
                JobOut result = apiInstance.JobApiPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.JobApiPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**JobIn**](JobIn.md)|  | [optional] 

### Return type

[**JobOut**](JobOut.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="userapiget"></a>
# **UserApiGet**
> void UserApiGet ()

Retrieves users

Get a list of users

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class UserApiGetExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();

            try
            {
                // Retrieves users
                apiInstance.UserApiGet();
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.UserApiGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="userapiiddelete"></a>
# **UserApiIdDelete**
> UserOut UserApiIdDelete (int? id)

Deletes a user

Deletes a user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class UserApiIdDeleteExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 

            try
            {
                // Deletes a user
                UserOut result = apiInstance.UserApiIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.UserApiIdDelete: " + e.Message );
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
<a name="userapiidget"></a>
# **UserApiIdGet**
> UserOut UserApiIdGet (int? id)

Retrieve a single user

Retrieve a single user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class UserApiIdGetExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 

            try
            {
                // Retrieve a single user
                UserOut result = apiInstance.UserApiIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.UserApiIdGet: " + e.Message );
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
<a name="userapiidput"></a>
# **UserApiIdPut**
> UserOut UserApiIdPut (int? id, UserUpdateIn body = null)

Update a single user

Update a single user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class UserApiIdPutExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var id = 56;  // int? | 
            var body = new UserUpdateIn(); // UserUpdateIn |  (optional) 

            try
            {
                // Update a single user
                UserOut result = apiInstance.UserApiIdPut(id, body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.UserApiIdPut: " + e.Message );
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
<a name="userapipost"></a>
# **UserApiPost**
> UserOut UserApiPost (UserNewIn body = null)

Creates a user

Create a new user

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.BJR.Api;
using IO.Swagger.Client;
using IO.Swagger.BJR.Model;

namespace Example
{
    public class UserApiPostExample
    {
        public void main()
        {

            var apiInstance = new DefaultApi();
            var body = new UserNewIn(); // UserNewIn |  (optional) 

            try
            {
                // Creates a user
                UserOut result = apiInstance.UserApiPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DefaultApi.UserApiPost: " + e.Message );
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
