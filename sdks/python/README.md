# bjr4py
API specification for the BJR job server.

This Python package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 2.6.0
- Build package: org.openapitools.codegen.languages.PythonClientCodegen

## Requirements.

Python >= 3.6

## Installation & Usage
### pip install

If the python package is hosted on a repository, you can install directly using:

```sh
pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```
(you may need to run `pip` with root permission: `sudo pip install git+https://github.com/GIT_USER_ID/GIT_REPO_ID.git`)

Then import the package:
```python
import bjr4py
```

### Setuptools

Install via [Setuptools](http://pypi.python.org/pypi/setuptools).

```sh
python setup.py install --user
```
(or `sudo python setup.py install` to install the package for all users)

Then import the package:
```python
import bjr4py
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```python

import time
import bjr4py
from pprint import pprint
from bjr4py.api import authentication_api
from bjr4py.model.auth_in import AuthIn
from bjr4py.model.auth_out import AuthOut
# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = bjr4py.Configuration(
    host = "http://localhost"
)



# Enter a context with an instance of the API client
with bjr4py.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = authentication_api.AuthenticationApi(api_client)
    auth_in = AuthIn(
        username="username_example",
        password="password_example",
    ) # AuthIn |  (optional)

    try:
        # Authenticates a user and returns a token
        api_response = api_instance.authenticate_user(auth_in=auth_in)
        pprint(api_response)
    except bjr4py.ApiException as e:
        print("Exception when calling AuthenticationApi->authenticate_user: %s\n" % e)
```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**authenticate_user**](docs/AuthenticationApi.md#authenticate_user) | **POST** /authenticate | Authenticates a user and returns a token
*FoldersApi* | [**create_folder**](docs/FoldersApi.md#create_folder) | **POST** /folder_api | Create a new Folder
*FoldersApi* | [**delete_folder**](docs/FoldersApi.md#delete_folder) | **DELETE** /folder_api/{id} | Delete an existing folder
*FoldersApi* | [**get_folder**](docs/FoldersApi.md#get_folder) | **GET** /folder_api/{id} | Return a single folder
*FoldersApi* | [**get_folder_jobs**](docs/FoldersApi.md#get_folder_jobs) | **GET** /folder_api/{id}/jobs | Return list of jobs in a folder
*FoldersApi* | [**get_folders**](docs/FoldersApi.md#get_folders) | **GET** /folder_api | Return paginated list of all folders
*FoldersApi* | [**update_folder**](docs/FoldersApi.md#update_folder) | **PUT** /folder_api/{id} | Update an existing folder
*JobServerApi* | [**get_busy_thread_count**](docs/JobServerApi.md#get_busy_thread_count) | **GET** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
*JobServerApi* | [**quiesce_node**](docs/JobServerApi.md#quiesce_node) | **POST** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
*JobServerApi* | [**recent_jobs**](docs/JobServerApi.md#recent_jobs) | **GET** /job_server_api/recent_jobs | List of recent jobs
*JobServerApi* | [**stats_by_day**](docs/JobServerApi.md#stats_by_day) | **GET** /job_server_api/daily_job_stats | Job statistics by day
*JobServerApi* | [**stats_by_hour**](docs/JobServerApi.md#stats_by_hour) | **GET** /job_server_api/hourly_job_stats | Job statistics by hour
*JobServerApi* | [**stats_by_minute**](docs/JobServerApi.md#stats_by_minute) | **GET** /job_server_api/minutely_job_stats | Job statistics by minute
*JobServerApi* | [**stats_by_week**](docs/JobServerApi.md#stats_by_week) | **GET** /job_server_api/weekly_job_stats | Job statistics by week
*JobServerApi* | [**todays_stats**](docs/JobServerApi.md#todays_stats) | **GET** /job_server_api/todays_stats | Todays Stats
*JobServerApi* | [**upcoming_jobs**](docs/JobServerApi.md#upcoming_jobs) | **GET** /job_server_api/upcoming_jobs | List of upcoming jobs
*JobsApi* | [**create_job**](docs/JobsApi.md#create_job) | **POST** /job_api | Creates a job
*JobsApi* | [**delete_job**](docs/JobsApi.md#delete_job) | **DELETE** /job_api/{id} | Deletes a job
*JobsApi* | [**get_job**](docs/JobsApi.md#get_job) | **GET** /job_api/{id} | Retrieves a single job
*JobsApi* | [**get_job_runs**](docs/JobsApi.md#get_job_runs) | **GET** /job_api/{id}/runs | Retrieve the runs for a job
*JobsApi* | [**get_jobs**](docs/JobsApi.md#get_jobs) | **GET** /job_api | Retrieves jobs
*JobsApi* | [**job_occurrences**](docs/JobsApi.md#job_occurrences) | **GET** /job_api/{id}/occurrences/{end_date} | Upcoming job occurrences
*JobsApi* | [**run_job_now**](docs/JobsApi.md#run_job_now) | **POST** /job_api/{id}/run_now | Run a job now
*JobsApi* | [**update_job**](docs/JobsApi.md#update_job) | **PUT** /job_api/{id} | Updates a single job
*StaticApi* | [**get_tags**](docs/StaticApi.md#get_tags) | **GET** /tags | Get tags
*StaticApi* | [**get_timezones**](docs/StaticApi.md#get_timezones) | **GET** /timezones | Get timezones
*StaticApi* | [**get_version**](docs/StaticApi.md#get_version) | **GET** /version | Server version
*UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /user_api | Creates a user
*UsersApi* | [**delete_user**](docs/UsersApi.md#delete_user) | **DELETE** /user_api/{id} | Deletes a user
*UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /user_api/{id} | Retrieve a single user
*UsersApi* | [**get_users**](docs/UsersApi.md#get_users) | **GET** /user_api | Retrieves users
*UsersApi* | [**update_user**](docs/UsersApi.md#update_user) | **PUT** /user_api/{id} | Update a single user


## Documentation For Models

 - [AuthIn](docs/AuthIn.md)
 - [AuthOut](docs/AuthOut.md)
 - [BusyThreadCountMessage](docs/BusyThreadCountMessage.md)
 - [BusyThreadCountMessageObject](docs/BusyThreadCountMessageObject.md)
 - [BusyThreadCountMessageObjectHosts](docs/BusyThreadCountMessageObjectHosts.md)
 - [DateTimeArray](docs/DateTimeArray.md)
 - [FolderArray](docs/FolderArray.md)
 - [FolderArrayMessage](docs/FolderArrayMessage.md)
 - [GenericMessage](docs/GenericMessage.md)
 - [JobArray](docs/JobArray.md)
 - [JobArrayMessage](docs/JobArrayMessage.md)
 - [JobIn](docs/JobIn.md)
 - [JobRunArray](docs/JobRunArray.md)
 - [JobRunArrayMessage](docs/JobRunArrayMessage.md)
 - [JobStat](docs/JobStat.md)
 - [JobStatArray](docs/JobStatArray.md)
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
 - [StringArray](docs/StringArray.md)
 - [Tag](docs/Tag.md)
 - [TagArray](docs/TagArray.md)
 - [TagMessage](docs/TagMessage.md)
 - [TimezoneMessage](docs/TimezoneMessage.md)
 - [TodaysStats](docs/TodaysStats.md)
 - [TodaysStatsMessage](docs/TodaysStatsMessage.md)
 - [UserArray](docs/UserArray.md)
 - [UserArrayMessage](docs/UserArrayMessage.md)
 - [UserNewIn](docs/UserNewIn.md)
 - [UserUpdateIn](docs/UserUpdateIn.md)


## Documentation For Authorization


## bearerAuth

- **Type**: Bearer authentication (JWT)


## Author




## Notes for Large OpenAPI documents
If the OpenAPI document is large, imports in bjr4py.apis and bjr4py.models may fail with a
RecursionError indicating the maximum recursion limit has been exceeded. In that case, there are a couple of solutions:

Solution 1:
Use specific imports for apis and models like:
- `from bjr4py.api.default_api import DefaultApi`
- `from bjr4py.model.pet import Pet`

Solution 2:
Before importing the package, adjust the maximum recursion limit as shown below:
```
import sys
sys.setrecursionlimit(1500)
import bjr4py
from bjr4py.apis import *
from bjr4py.models import *
```

