# Rust API client for BJR

API specification for the BJR job server.

## Overview

This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 2.3.3
- Build package: org.openapitools.codegen.languages.RustClientCodegen

## Installation

Put the package under your project folder and add the following to `Cargo.toml` under `[dependencies]`:

```
    openapi = { path = "./generated" }
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**authenticate_user**](docs/AuthenticationApi.md#authenticate_user) | **Post** /authenticate | Authenticates a user and returns a token
*FoldersApi* | [**create_folder**](docs/FoldersApi.md#create_folder) | **Post** /folder_api | Create a new Folder
*FoldersApi* | [**delete_folder**](docs/FoldersApi.md#delete_folder) | **Delete** /folder_api/{id} | Delete an existing folder
*FoldersApi* | [**get_folder**](docs/FoldersApi.md#get_folder) | **Get** /folder_api/{id} | Return a single folder
*FoldersApi* | [**get_folder_jobs**](docs/FoldersApi.md#get_folder_jobs) | **Get** /folder_api/{id}/jobs | Return list of jobs in a folder
*FoldersApi* | [**get_folders**](docs/FoldersApi.md#get_folders) | **Get** /folder_api | Return paginated list of all folders
*FoldersApi* | [**update_folder**](docs/FoldersApi.md#update_folder) | **Put** /folder_api/{id} | Update an existing folder
*JobServerApi* | [**get_busy_thread_count**](docs/JobServerApi.md#get_busy_thread_count) | **Get** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
*JobServerApi* | [**quiesce_node**](docs/JobServerApi.md#quiesce_node) | **Post** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
*JobServerApi* | [**recent_jobs**](docs/JobServerApi.md#recent_jobs) | **Get** /job_server_api/recent_jobs | List of recent jobs
*JobServerApi* | [**stats_by_day**](docs/JobServerApi.md#stats_by_day) | **Get** /job_server_api/daily_job_stats | Job statistics by day
*JobServerApi* | [**stats_by_hour**](docs/JobServerApi.md#stats_by_hour) | **Get** /job_server_api/hourly_job_stats | Job statistics by hour
*JobServerApi* | [**stats_by_minute**](docs/JobServerApi.md#stats_by_minute) | **Get** /job_server_api/minutely_job_stats | Job statistics by minute
*JobServerApi* | [**stats_by_week**](docs/JobServerApi.md#stats_by_week) | **Get** /job_server_api/weekly_job_stats | Job statistics by week
*JobServerApi* | [**todays_stats**](docs/JobServerApi.md#todays_stats) | **Get** /job_server_api/todays_stats | Todays Stats
*JobServerApi* | [**upcoming_jobs**](docs/JobServerApi.md#upcoming_jobs) | **Get** /job_server_api/upcoming_jobs | List of upcoming jobs
*JobsApi* | [**create_job**](docs/JobsApi.md#create_job) | **Post** /job_api | Creates a job
*JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **Delete** /job_api/{id} | Deletes a job
*JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **Get** /job_api/{id} | Retrieves a single job
*JobsApi* | [**get_job_runs**](docs/JobsApi.md#get_job_runs) | **Get** /job_api/{id}/runs | Retrieve the runs for a job
*JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **Get** /job_api | Retrieves jobs
*JobsApi* | [**job_occurrences**](docs/JobsApi.md#job_occurrences) | **Get** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
*JobsApi* | [**run_job_now**](docs/JobsApi.md#run_job_now) | **Post** /job_api/{id}/run_now | Run a job now
*JobsApi* | [**update_job**](docs/JobsApi.md#update_job) | **Put** /job_api/{id} | Updates a single job
*StaticApi* | [**get_tags**](docs/StaticApi.md#get_tags) | **Get** /tags | Get tags
*StaticApi* | [**get_timezones**](docs/StaticApi.md#get_timezones) | **Get** /timezones | Get timezones
*StaticApi* | [**get_version**](docs/StaticApi.md#get_version) | **Get** /version | Server version
*UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **Post** /user_api | Creates a user
*UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **Delete** /user_api/{id} | Deletes a user
*UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **Get** /user_api/{id} | Retrieve a single user
*UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **Get** /user_api | Retrieves users
*UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **Put** /user_api/{id} | Update a single user


## Documentation For Models

 - [AuthIn](docs/AuthIn.md)
 - [AuthOut](docs/AuthOut.md)
 - [BusyThreadCountMessage](docs/BusyThreadCountMessage.md)
 - [BusyThreadCountMessageObject](docs/BusyThreadCountMessageObject.md)
 - [BusyThreadCountMessageObjectHosts](docs/BusyThreadCountMessageObjectHosts.md)
 - [FolderArrayMessage](docs/FolderArrayMessage.md)
 - [GenericMessage](docs/GenericMessage.md)
 - [JobArrayMessage](docs/JobArrayMessage.md)
 - [JobIn](docs/JobIn.md)
 - [JobRunArrayMessage](docs/JobRunArrayMessage.md)
 - [JobStat](docs/JobStat.md)
 - [JobStatMessage](docs/JobStatMessage.md)
 - [OccurrenceMessage](docs/OccurrenceMessage.md)
 - [ServerVersion](docs/ServerVersion.md)
 - [SingleFolder](docs/SingleFolder.md)
 - [SingleFolderMessage](docs/SingleFolderMessage.md)
 - [SingleJob](docs/SingleJob.md)
 - [SingleJobMessage](docs/SingleJobMessage.md)
 - [SingleJobRun](docs/SingleJobRun.md)
 - [SingleJobRunMessage](docs/SingleJobRunMessage.md)
 - [SingleUser](docs/SingleUser.md)
 - [SingleUserMessage](docs/SingleUserMessage.md)
 - [Tag](docs/Tag.md)
 - [TagMessage](docs/TagMessage.md)
 - [TimezoneMessage](docs/TimezoneMessage.md)
 - [TodaysStats](docs/TodaysStats.md)
 - [TodaysStatsMessage](docs/TodaysStatsMessage.md)
 - [UserArrayMessage](docs/UserArrayMessage.md)
 - [UserNewIn](docs/UserNewIn.md)
 - [UserUpdateIn](docs/UserUpdateIn.md)


To get access to the crate's generated documentation, use:

```
cargo doc --open
```

## Author


