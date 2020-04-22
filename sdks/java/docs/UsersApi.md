# UsersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersApi.md#createUser) | **POST** /user_api | Creates a user
[**deleteUser**](UsersApi.md#deleteUser) | **DELETE** /user_api/{id} | Deletes a user
[**getUser**](UsersApi.md#getUser) | **GET** /user_api/{id} | Retrieve a single user
[**getUsers**](UsersApi.md#getUsers) | **GET** /user_api | Retrieves users
[**updateUser**](UsersApi.md#updateUser) | **PUT** /user_api/{id} | Update a single user

<a name="createUser"></a>
# **createUser**
> SingleUserMessage createUser(body)

Creates a user

Create a new user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


UsersApi apiInstance = new UsersApi();
UserNewIn body = new UserNewIn(); // UserNewIn | 
try {
    SingleUserMessage result = apiInstance.createUser(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#createUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserNewIn**](UserNewIn.md)|  | [optional]

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteUser"></a>
# **deleteUser**
> SingleUserMessage deleteUser(id)

Deletes a user

Deletes a user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


UsersApi apiInstance = new UsersApi();
Integer id = 56; // Integer | 
try {
    SingleUserMessage result = apiInstance.deleteUser(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#deleteUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SingleUserMessage getUser(id)

Retrieve a single user

Retrieve a single user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


UsersApi apiInstance = new UsersApi();
Integer id = 56; // Integer | 
try {
    SingleUserMessage result = apiInstance.getUser(id);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> UserArrayMessage getUsers(perPage, page)

Retrieves users

Get a list of users

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


UsersApi apiInstance = new UsersApi();
Integer perPage = 56; // Integer | 
Integer page = 56; // Integer | 
try {
    UserArrayMessage result = apiInstance.getUsers(perPage, page);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getUsers");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **Integer**|  | [optional]
 **page** | **Integer**|  | [optional]

### Return type

[**UserArrayMessage**](UserArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateUser"></a>
# **updateUser**
> SingleUserMessage updateUser(id, body)

Update a single user

Update a single user

### Example
```java
// Import classes:
//import BJR.ApiClient;
//import BJR.ApiException;
//import BJR.Configuration;
//import BJR.auth.*;
//import Api.UsersApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


UsersApi apiInstance = new UsersApi();
Integer id = 56; // Integer | 
UserUpdateIn body = new UserUpdateIn(); // UserUpdateIn | 
try {
    SingleUserMessage result = apiInstance.updateUser(id, body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#updateUser");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  |
 **body** | [**UserUpdateIn**](UserUpdateIn.md)|  | [optional]

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

