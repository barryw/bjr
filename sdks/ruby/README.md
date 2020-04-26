# bjr4r

BJR - the Ruby gem for the BJR API V1

API specification for the BJR job server.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bjr4r.gemspec
```

Then either install the gem locally:

```shell
gem install ./bjr4r-1.0.0.gem
```

(for development, run `gem install --dev ./bjr4r-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bjr4r', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'bjr4r', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'bjr4r'

api_instance = BJR::AuthenticationApi.new
opts = {
  auth_in: BJR::AuthIn.new # AuthIn | 
}

begin
  #Authenticates a user and returns a token
  result = api_instance.authenticate_user(opts)
  p result
rescue BJR::ApiError => e
  puts "Exception when calling AuthenticationApi->authenticate_user: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BJR::AuthenticationApi* | [**authenticate_user**](docs/AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token
*BJR::JobsApi* | [**create_job**](docs/JobsApi.md#create_job) | **POST** /job_api | Creates a job
*BJR::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job
*BJR::JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job
*BJR::JobsApi* | [**get_job_runs**](docs/JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
*BJR::JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs
*BJR::JobsApi* | [**job_occurrences**](docs/JobsApi.md#job_occurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
*BJR::JobsApi* | [**update_job**](docs/JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job
*BJR::StaticApi* | [**get_tags**](docs/StaticApi.md#get_tags) | **GET** /static_api/tags | Get tags
*BJR::StaticApi* | [**get_timezones**](docs/StaticApi.md#get_timezones) | **GET** /static_api/timezones | Get timezones
*BJR::StaticApi* | [**get_version**](docs/StaticApi.md#get_version) | **GET** /version | Server version
*BJR::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /user_api | Creates a user
*BJR::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /user_api/{id} | Deletes a user
*BJR::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /user_api/{id} | Retrieve a single user
*BJR::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /user_api | Retrieves users
*BJR::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /user_api/{id} | Update a single user


## Documentation for Models

 - [BJR::AuthIn](docs/AuthIn.md)
 - [BJR::AuthOut](docs/AuthOut.md)
 - [BJR::JobArrayMessage](docs/JobArrayMessage.md)
 - [BJR::JobIn](docs/JobIn.md)
 - [BJR::JobRunArrayMessage](docs/JobRunArrayMessage.md)
 - [BJR::OccurrenceMessage](docs/OccurrenceMessage.md)
 - [BJR::ServerVersion](docs/ServerVersion.md)
 - [BJR::SingleJob](docs/SingleJob.md)
 - [BJR::SingleJobMessage](docs/SingleJobMessage.md)
 - [BJR::SingleJobRun](docs/SingleJobRun.md)
 - [BJR::SingleJobRunMessage](docs/SingleJobRunMessage.md)
 - [BJR::SingleUser](docs/SingleUser.md)
 - [BJR::SingleUserMessage](docs/SingleUserMessage.md)
 - [BJR::Tag](docs/Tag.md)
 - [BJR::TagMessage](docs/TagMessage.md)
 - [BJR::TimezoneMessage](docs/TimezoneMessage.md)
 - [BJR::UserArrayMessage](docs/UserArrayMessage.md)
 - [BJR::UserNewIn](docs/UserNewIn.md)
 - [BJR::UserUpdateIn](docs/UserUpdateIn.md)


## Documentation for Authorization


### bearerAuth

- **Type**: Bearer authentication (JWT)
