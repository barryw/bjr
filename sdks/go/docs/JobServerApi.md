# \JobServerApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBusyThreadCount**](JobServerApi.md#GetBusyThreadCount) | **Get** /job_server_api/busy_thread_count | Retrieve the count of busy workers across worker pods/nodes
[**QuiesceNode**](JobServerApi.md#QuiesceNode) | **Post** /job_server_api/quiesce_worker | Quiesce a single worker pod/node
[**RecentJobs**](JobServerApi.md#RecentJobs) | **Get** /job_server_api/recent_jobs | List of recent jobs
[**StatsByDay**](JobServerApi.md#StatsByDay) | **Get** /job_server_api/daily_job_stats | Job statistics by day
[**StatsByHour**](JobServerApi.md#StatsByHour) | **Get** /job_server_api/hourly_job_stats | Job statistics by hour
[**StatsByMinute**](JobServerApi.md#StatsByMinute) | **Get** /job_server_api/minutely_job_stats | Job statistics by minute
[**StatsByWeek**](JobServerApi.md#StatsByWeek) | **Get** /job_server_api/weekly_job_stats | Job statistics by week
[**TodaysStats**](JobServerApi.md#TodaysStats) | **Get** /job_server_api/todays_stats | Todays Stats
[**UpcomingJobs**](JobServerApi.md#UpcomingJobs) | **Get** /job_server_api/upcoming_jobs | List of upcoming jobs



## GetBusyThreadCount

> BusyThreadCountMessage GetBusyThreadCount(ctx).Execute()

Retrieve the count of busy workers across worker pods/nodes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.GetBusyThreadCount(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.GetBusyThreadCount``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GetBusyThreadCount`: BusyThreadCountMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.GetBusyThreadCount`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetBusyThreadCountRequest struct via the builder pattern


### Return type

[**BusyThreadCountMessage**](BusyThreadCountMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## QuiesceNode

> GenericMessage QuiesceNode(ctx).Host(host).Execute()

Quiesce a single worker pod/node



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    host := "host_example" // string | The hostname of the worker pod/node to quiesce

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.QuiesceNode(context.Background()).Host(host).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.QuiesceNode``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `QuiesceNode`: GenericMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.QuiesceNode`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiQuiesceNodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **string** | The hostname of the worker pod/node to quiesce | 

### Return type

[**GenericMessage**](GenericMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RecentJobs

> JobArrayMessage RecentJobs(ctx).Count(count).Execute()

List of recent jobs



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    count := int32(56) // int32 | The number of jobs to return (max 20) (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.RecentJobs(context.Background()).Count(count).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.RecentJobs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RecentJobs`: JobArrayMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.RecentJobs`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRecentJobsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int32** | The number of jobs to return (max 20) | 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByDay

> JobStatMessage StatsByDay(ctx).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()

Job statistics by day



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    startDate := "startDate_example" // string | The start date from which to get daily metrics from (optional)
    endDate := "endDate_example" // string | The end date from which to get daily metrics from (optional)
    perPage := int32(56) // int32 |  (optional)
    page := int32(56) // int32 |  (optional)
    timezone := "timezone_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.StatsByDay(context.Background()).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.StatsByDay``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `StatsByDay`: JobStatMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.StatsByDay`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStatsByDayRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string** | The start date from which to get daily metrics from | 
 **endDate** | **string** | The end date from which to get daily metrics from | 
 **perPage** | **int32** |  | 
 **page** | **int32** |  | 
 **timezone** | **string** |  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByHour

> JobStatMessage StatsByHour(ctx).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()

Job statistics by hour



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    startDate := "startDate_example" // string | The start date from which to get hourly metrics from (optional)
    endDate := "endDate_example" // string | The end date from which to get hourly metrics from (optional)
    perPage := int32(56) // int32 |  (optional)
    page := int32(56) // int32 |  (optional)
    timezone := "timezone_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.StatsByHour(context.Background()).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.StatsByHour``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `StatsByHour`: JobStatMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.StatsByHour`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStatsByHourRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string** | The start date from which to get hourly metrics from | 
 **endDate** | **string** | The end date from which to get hourly metrics from | 
 **perPage** | **int32** |  | 
 **page** | **int32** |  | 
 **timezone** | **string** |  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByMinute

> JobStatMessage StatsByMinute(ctx).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()

Job statistics by minute



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    startDate := "startDate_example" // string | The start date from which to get minutely metrics from (optional)
    endDate := "endDate_example" // string | The end date from which to get minutely metrics from (optional)
    perPage := int32(56) // int32 |  (optional)
    page := int32(56) // int32 |  (optional)
    timezone := "timezone_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.StatsByMinute(context.Background()).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.StatsByMinute``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `StatsByMinute`: JobStatMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.StatsByMinute`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStatsByMinuteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string** | The start date from which to get minutely metrics from | 
 **endDate** | **string** | The end date from which to get minutely metrics from | 
 **perPage** | **int32** |  | 
 **page** | **int32** |  | 
 **timezone** | **string** |  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StatsByWeek

> JobStatMessage StatsByWeek(ctx).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()

Job statistics by week



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    startDate := "startDate_example" // string | The start date from which to get weekly metrics from (optional)
    endDate := "endDate_example" // string | The end date from which to get weekly metrics from (optional)
    perPage := int32(56) // int32 |  (optional)
    page := int32(56) // int32 |  (optional)
    timezone := "timezone_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.StatsByWeek(context.Background()).StartDate(startDate).EndDate(endDate).PerPage(perPage).Page(page).Timezone(timezone).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.StatsByWeek``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `StatsByWeek`: JobStatMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.StatsByWeek`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStatsByWeekRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **string** | The start date from which to get weekly metrics from | 
 **endDate** | **string** | The end date from which to get weekly metrics from | 
 **perPage** | **int32** |  | 
 **page** | **int32** |  | 
 **timezone** | **string** |  | 

### Return type

[**JobStatMessage**](JobStatMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TodaysStats

> TodaysStatsMessage TodaysStats(ctx).Timezone(timezone).Execute()

Todays Stats



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    timezone := "timezone_example" // string |  (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.TodaysStats(context.Background()).Timezone(timezone).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.TodaysStats``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TodaysStats`: TodaysStatsMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.TodaysStats`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTodaysStatsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezone** | **string** |  | 

### Return type

[**TodaysStatsMessage**](TodaysStatsMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpcomingJobs

> JobArrayMessage UpcomingJobs(ctx).Count(count).Execute()

List of upcoming jobs



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    count := int32(56) // int32 | The number of jobs to return (max 20) (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.JobServerApi.UpcomingJobs(context.Background()).Count(count).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `JobServerApi.UpcomingJobs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `UpcomingJobs`: JobArrayMessage
    fmt.Fprintf(os.Stdout, "Response from `JobServerApi.UpcomingJobs`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpcomingJobsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **int32** | The number of jobs to return (max 20) | 

### Return type

[**JobArrayMessage**](JobArrayMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

