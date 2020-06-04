# \UsersApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_user**](UsersApi.md#create_user) | **Post** /user_api | Creates a user
[**delete_user**](UsersApi.md#delete_user) | **Delete** /user_api/{id} | Deletes a user
[**get_user**](UsersApi.md#get_user) | **Get** /user_api/{id} | Retrieve a single user
[**get_users**](UsersApi.md#get_users) | **Get** /user_api | Retrieves users
[**update_user**](UsersApi.md#update_user) | **Put** /user_api/{id} | Update a single user



## create_user

> crate::models::SingleUserMessage create_user(user_new_in)
Creates a user

Create a new user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**user_new_in** | Option<[**UserNewIn**](UserNewIn.md)> |  |  |

### Return type

[**crate::models::SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_user

> crate::models::SingleUserMessage delete_user(id)
Deletes a user

Deletes a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_user

> crate::models::SingleUserMessage get_user(id)
Retrieve a single user

Retrieve a single user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**crate::models::SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_users

> crate::models::UserArrayMessage get_users(per_page, page)
Retrieves users

Get a list of users

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**per_page** | Option<**i32**> |  |  |
**page** | Option<**i32**> |  |  |

### Return type

[**crate::models::UserArrayMessage**](UserArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_user

> crate::models::SingleUserMessage update_user(id, user_update_in)
Update a single user

Update a single user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |
**user_update_in** | Option<[**UserUpdateIn**](UserUpdateIn.md)> |  |  |

### Return type

[**crate::models::SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

