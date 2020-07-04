# BJR.model.JobStat

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runs** | **int** | The number of job runs in the period. | [optional] [default to null]
**failed** | **int** | The number of job runs that failed in the period. | [optional] [default to null]
**jobCount** | **int** | The number of jobs that executed in the period. | [optional] [default to null]
**avgRuntime** | **double** | The average runtime in seconds of all jobs in the period. | [optional] [default to null]
**maxRuntime** | **double** | The max runtime in seconds of all jobs in the period. | [optional] [default to null]
**minRuntime** | **double** | The min runtime in seconds of all jobs in the period. | [optional] [default to null]
**totalJobs** | **int** | The total number of jobs. | [optional] [default to null]
**totalEnabled** | **int** | Of the total number of jobs, this is how many were enabled. | [optional] [default to null]
**avgJobLag** | **double** | The average job lag in seconds. | [optional] [default to null]
**maxJobLag** | **int** | The maximum job lag in seconds. | [optional] [default to null]
**minJobLag** | **int** | The minimum job lag in seconds. | [optional] [default to null]
**period** | **String** | The runtime period. | [optional] [default to null]
**startDt** | [**OffsetDateTime**](OffsetDateTime.md) | The period start date. | [optional] [default to null]
**endDt** | [**OffsetDateTime**](OffsetDateTime.md) | The period end date. | [optional] [default to null]
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date the record was created. | [optional] [default to null]
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date the record was last updated. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


