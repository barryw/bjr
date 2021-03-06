# bjr4r

BJR - the Ruby gem for the BJR API V1

API specification for the BJR job server.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 2.6.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build bjr4r.gemspec
```

Then either install the gem locally:

```shell
gem install ./bjr4r-2.6.0.gem
```

(for development, run `gem install --dev ./bjr4r-2.6.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'bjr4r', '~> 2.6.0'

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
  auth_in: BJR::AuthIn.new({username: 'username_example', password: 'password_example'}) # AuthIn | 
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
*BJR::FoldersApi* | [**create_folder**](docs/FoldersApi.md#create_folder) | **POST** /folder_api | Create a new Folder
*BJR::FoldersApi* | [**delete_folder**](docs/FoldersApi.md#delete_folder) | **DELETE** /folder_api/{id} | Delete an existing folder
*BJR::FoldersApi* | [**get_folder**](docs/FoldersApi.md#get_folder) | **GET** /folder_api/{id} | Return a single folder
*BJR::FoldersApi* | [**get_folder_jobs**](docs/FoldersApi.md#get_folder_jobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder
*BJR::FoldersApi* | [**get_folders**](docs/FoldersApi.md#get_folders) | **GET** /folder_api | Return paginated list of all folders
*BJR::FoldersApi* | [**update_folder**](docs/FoldersApi.md#update_folder) | **PUT** /folder_api/{id} | Update an existing folder
*BJR::JobServerApi* | [**get_busy_thread_count**](docs/JobServerApi.md#get_busy_thread_count) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
*BJR::JobServerApi* | [**quiesce_node**](docs/JobServerApi.md#quiesce_node) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
*BJR::JobServerApi* | [**recent_jobs**](docs/JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
*BJR::JobServerApi* | [**stats_by_day**](docs/JobServerApi.md#stats_by_day) | **GET** /job_server_api/daily_job_stats | Job statistics by day
*BJR::JobServerApi* | [**stats_by_hour**](docs/JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
*BJR::JobServerApi* | [**stats_by_minute**](docs/JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
*BJR::JobServerApi* | [**stats_by_week**](docs/JobServerApi.md#stats_by_week) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
*BJR::JobServerApi* | [**todays_stats**](docs/JobServerApi.md#todays_stats) | **GET** /job_server_api/todays_stats | Todays Stats
*BJR::JobServerApi* | [**upcoming_jobs**](docs/JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs
*BJR::JobsApi* | [**create_job**](docs/JobsApi.md#create_job) | **POST** /job_api | Creates a job
*BJR::JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job
*BJR::JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job
*BJR::JobsApi* | [**get_job_runs**](docs/JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
*BJR::JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs
*BJR::JobsApi* | [**job_occurrences**](docs/JobsApi.md#job_occurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
*BJR::JobsApi* | [**run_job_now**](docs/JobsApi.md#run_job_now) | **POST** /job_api/{id}/run_now | Run a job now
*BJR::JobsApi* | [**update_job**](docs/JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job
*BJR::StaticApi* | [**get_tags**](docs/StaticApi.md#get_tags) | **GET** /tags | Get tags
*BJR::StaticApi* | [**get_timezones**](docs/StaticApi.md#get_timezones) | **GET** /timezones | Get timezones
*BJR::StaticApi* | [**get_version**](docs/StaticApi.md#get_version) | **GET** /version | Server version
*BJR::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /user_api | Creates a user
*BJR::UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /user_api/{id} | Deletes a user
*BJR::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /user_api/{id} | Retrieve a single user
*BJR::UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /user_api | Retrieves users
*BJR::UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /user_api/{id} | Update a single user


## Documentation for Models

 - [BJR::AuthIn](docs/AuthIn.md)
 - [BJR::AuthOut](docs/AuthOut.md)
 - [BJR::BusyThreadCountMessage](docs/BusyThreadCountMessage.md)
 - [BJR::BusyThreadCountMessageObject](docs/BusyThreadCountMessageObject.md)
 - [BJR::BusyThreadCountMessageObjectHosts](docs/BusyThreadCountMessageObjectHosts.md)
 - [BJR::FolderArrayMessage](docs/FolderArrayMessage.md)
 - [BJR::GenericMessage](docs/GenericMessage.md)
 - [BJR::JobArrayMessage](docs/JobArrayMessage.md)
 - [BJR::JobIn](docs/JobIn.md)
 - [BJR::JobRunArrayMessage](docs/JobRunArrayMessage.md)
 - [BJR::JobStat](docs/JobStat.md)
 - [BJR::JobStatMessage](docs/JobStatMessage.md)
 - [BJR::OccurrenceMessage](docs/OccurrenceMessage.md)
 - [BJR::ServerVersion](docs/ServerVersion.md)
 - [BJR::SingleFolder](docs/SingleFolder.md)
 - [BJR::SingleFolderMessage](docs/SingleFolderMessage.md)
 - [BJR::SingleJob](docs/SingleJob.md)
 - [BJR::SingleJobMessage](docs/SingleJobMessage.md)
 - [BJR::SingleJobRun](docs/SingleJobRun.md)
 - [BJR::SingleJobRunMessage](docs/SingleJobRunMessage.md)
 - [BJR::SingleUser](docs/SingleUser.md)
 - [BJR::SingleUserMessage](docs/SingleUserMessage.md)
 - [BJR::Tag](docs/Tag.md)
 - [BJR::TagMessage](docs/TagMessage.md)
 - [BJR::TimezoneMessage](docs/TimezoneMessage.md)
 - [BJR::TodaysStats](docs/TodaysStats.md)
 - [BJR::TodaysStatsMessage](docs/TodaysStatsMessage.md)
 - [BJR::UserArrayMessage](docs/UserArrayMessage.md)
 - [BJR::UserNewIn](docs/UserNewIn.md)
 - [BJR::UserUpdateIn](docs/UserUpdateIn.md)


## Documentation for Authorization


### bearerAuth

- **Type**: Bearer authentication (JWT)

