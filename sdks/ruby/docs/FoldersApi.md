# BJR::FoldersApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_folder**](FoldersApi.md#create_folder) | **POST** /folder_api | Create a new Folder |
| [**delete_folder**](FoldersApi.md#delete_folder) | **DELETE** /folder_api/{id} | Delete an existing folder |
| [**get_folder**](FoldersApi.md#get_folder) | **GET** /folder_api/{id} | Return a single folder |
| [**get_folder_jobs**](FoldersApi.md#get_folder_jobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder |
| [**get_folders**](FoldersApi.md#get_folders) | **GET** /folder_api | Return paginated list of all folders |
| [**update_folder**](FoldersApi.md#update_folder) | **PUT** /folder_api/{id} | Update an existing folder |


## create_folder

> <SingleFolderMessage> create_folder(name, expression)

Create a new Folder

Create a new Folder

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
name = 'name_example' # String | 
expression = 'expression_example' # String | 

begin
  # Create a new Folder
  result = api_instance.create_folder(name, expression)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleFolderMessage>, Integer, Hash)> create_folder_with_http_info(name, expression)

```ruby
begin
  # Create a new Folder
  data, status_code, headers = api_instance.create_folder_with_http_info(name, expression)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleFolderMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **expression** | **String** |  |  |

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_folder

> <SingleFolderMessage> delete_folder(id)

Delete an existing folder

Delete an existing folder

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
id = 56 # Integer | 

begin
  # Delete an existing folder
  result = api_instance.delete_folder(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->delete_folder: #{e}"
end
```

#### Using the delete_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleFolderMessage>, Integer, Hash)> delete_folder_with_http_info(id)

```ruby
begin
  # Delete an existing folder
  data, status_code, headers = api_instance.delete_folder_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleFolderMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder

> <SingleFolderMessage> get_folder(id)

Return a single folder

Return a single folder

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
id = 56 # Integer | 

begin
  # Return a single folder
  result = api_instance.get_folder(id)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folder: #{e}"
end
```

#### Using the get_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleFolderMessage>, Integer, Hash)> get_folder_with_http_info(id)

```ruby
begin
  # Return a single folder
  data, status_code, headers = api_instance.get_folder_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleFolderMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_jobs

> <JobArrayMessage> get_folder_jobs(id, opts)

Return list of jobs in a folder

Return list of jobs in a folder

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
id = 56 # Integer | 
opts = {
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Return list of jobs in a folder
  result = api_instance.get_folder_jobs(id, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folder_jobs: #{e}"
end
```

#### Using the get_folder_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobArrayMessage>, Integer, Hash)> get_folder_jobs_with_http_info(id, opts)

```ruby
begin
  # Return list of jobs in a folder
  data, status_code, headers = api_instance.get_folder_jobs_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folder_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folders

> <FolderArrayMessage> get_folders(opts)

Return paginated list of all folders

Return paginated list of all folders

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
opts = {
  per_page: 56, # Integer | 
  page: 56 # Integer | 
}

begin
  # Return paginated list of all folders
  result = api_instance.get_folders(opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folders: #{e}"
end
```

#### Using the get_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderArrayMessage>, Integer, Hash)> get_folders_with_http_info(opts)

```ruby
begin
  # Return paginated list of all folders
  data, status_code, headers = api_instance.get_folders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderArrayMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->get_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **per_page** | **Integer** |  | [optional] |
| **page** | **Integer** |  | [optional] |

### Return type

[**FolderArrayMessage**](FolderArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_folder

> <SingleFolderMessage> update_folder(id, opts)

Update an existing folder

Update an existing folder

### Examples

```ruby
require 'time'
require 'bjr4r'
# setup authorization
BJR.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BJR::FoldersApi.new
id = 56 # Integer | 
opts = {
  name: 'name_example', # String | 
  expression: 'expression_example' # String | 
}

begin
  # Update an existing folder
  result = api_instance.update_folder(id, opts)
  p result
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->update_folder: #{e}"
end
```

#### Using the update_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingleFolderMessage>, Integer, Hash)> update_folder_with_http_info(id, opts)

```ruby
begin
  # Update an existing folder
  data, status_code, headers = api_instance.update_folder_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingleFolderMessage>
rescue BJR::ApiError => e
  puts "Error when calling FoldersApi->update_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **name** | **String** |  | [optional] |
| **expression** | **String** |  | [optional] |

### Return type

[**SingleFolderMessage**](SingleFolderMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

