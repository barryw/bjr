# BJR::UsersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /user_api | Creates a user |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /user_api/{id} | Deletes a user |
| [**get_user**](UsersApi.md#get_user) | **GET** /user_api/{id} | Retrieve a single user |
| [**get_users**](UsersApi.md#get_users) | **GET** /user_api | Retrieves users |
| [**update_user**](UsersApi.md#update_user) | **PUT** /user_api/{id} | Update a single user |


## create_user

> <SingleUserMessage> create_user(opts)

Creates a user

Create a new user. Only root users are allowed to create new users.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::UsersApi.new
opts = {
  user_new_in: BJR::UserNewIn.new({username: 'username_example', password: 'password_example', password_confirmation: 'password_confirmation_example'}) # UserNewIn | 
}

begin
  # Creates a user
  result = api_instance.create_user(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUserMessage>, Integer, Hash)> create_user_with_http_info(opts)

```ruby
begin
  # Creates a user
  data, status_code, headers = api_instance.create_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUserMessage>
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_new_in** | [**UserNewIn**](UserNewIn.md) |  | [optional] |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> <SingleUserMessage> delete_user(id)

Deletes a user

Deletes a user. Only root users can delete other users.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::UsersApi.new
id = 56 # Integer | 

begin
  # Deletes a user
  result = api_instance.delete_user(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUserMessage>, Integer, Hash)> delete_user_with_http_info(id)

```ruby
begin
  # Deletes a user
  data, status_code, headers = api_instance.delete_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUserMessage>
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <SingleUserMessage> get_user(id)

Retrieve a single user

Retrieve a single user. If you're a non-root user, then you can only retrieve your own user.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::UsersApi.new
id = 56 # Integer | 

begin
  # Retrieve a single user
  result = api_instance.get_user(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUserMessage>, Integer, Hash)> get_user_with_http_info(id)

```ruby
begin
  # Retrieve a single user
  data, status_code, headers = api_instance.get_user_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUserMessage>
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <UserArrayMessage> get_users(opts)

Retrieves users

Get a list of users

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::UsersApi.new
opts = {
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Retrieves users
  result = api_instance.get_users(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserArrayMessage>, Integer, Hash)> get_users_with_http_info(opts)

```ruby
begin
  # Retrieves users
  data, status_code, headers = api_instance.get_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**UserArrayMessage**](UserArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <SingleUserMessage> update_user(id, opts)

Update a single user

Update a single user. If you're a non-root users, then you can only update your own user.

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::UsersApi.new
id = 56 # Integer | 
opts = {
  user_update_in: BJR::UserUpdateIn.new({password: 'password_example', password_confirmation: 'password_confirmation_example'}) # UserUpdateIn | 
}

begin
  # Update a single user
  result = api_instance.update_user(id, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleUserMessage>, Integer, Hash)> update_user_with_http_info(id, opts)

```ruby
begin
  # Update a single user
  data, status_code, headers = api_instance.update_user_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleUserMessage>
rescue BJR::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **user_update_in** | [**UserUpdateIn**](UserUpdateIn.md) |  | [optional] |

### Return type

[**SingleUserMessage**](SingleUserMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

