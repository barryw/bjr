# BJR.model.JobStat

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**runs** | **int** | The number of job runs in the period. | [optional] 
**failed** | **int** | The number of job runs that failed in the period. | [optional] 
**jobCount** | **int** | The number of jobs that executed in the period. | [optional] 
**avgRuntime** | **double** | The average runtime in seconds of all jobs in the period. | [optional] 
**maxRuntime** | **double** | The max runtime in seconds of all jobs in the period. | [optional] 
**minRuntime** | **double** | The min runtime in seconds of all jobs in the period. | [optional] 
**totalJobs** | **int** | The total number of jobs. | [optional] 
**totalEnabled** | **int** | Of the total number of jobs, this is how many were enabled. | [optional] 
**avgJobLag** | **double** | The average job lag in seconds. | [optional] 
**maxJobLag** | **int** | The maximum job lag in seconds. | [optional] 
**minJobLag** | **int** | The minimum job lag in seconds. | [optional] 
**period** | **String** | The runtime period. | [optional] 
**startDt** | [**OffsetDateTime**](OffsetDateTime.md) | The period start date. | [optional] 
**endDt** | [**OffsetDateTime**](OffsetDateTime.md) | The period end date. | [optional] 
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date the record was created. | [optional] 
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date the record was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


