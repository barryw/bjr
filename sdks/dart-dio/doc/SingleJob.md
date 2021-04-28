# BJR.model.SingleJob

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object's primary key. This uniquely identifies the object in the system. | [optional] 
**name** | **String** | The name of the job. | [optional] 
**cron** | **String** | The cron expression for the job. | [optional] 
**enabled** | **bool** | Whether the job is enabled or not. | [optional] 
**command** | **String** | The command that is executed when the job fires. | [optional] 
**lastRun** | **String** | The last time the job ran. | [optional] 
**nextRun** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time of the job's next run. | [optional] 
**success** | **bool** | Whether the last run of the job was successful. | [optional] 
**running** | **bool** | Whether the job is currently running. | [optional] 
**timezone** | **String** | The timezone that the job will run in. | [optional] 
**tags** | **BuiltList<String>** | An array of tags associated with the job. | [optional] 
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The UTC date and time that the object was created. | [optional] 
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The UTC date and time that the object was last modified. | [optional] 
**successCallback** | **String** | This url will receive a POST request with details about all successful job runs. | [optional] 
**failureCallback** | **String** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] 
**avgRunDuration** | **double** | The average runtime across all runs of this job. | [optional] 
**maxRunDuration** | **double** | The maximum runtime across all runs of this job. | [optional] 
**minRunDuration** | **double** | The minimum runtime across all runs of this job. | [optional] 
**avgRunDurationTrend** | **double** | The average runtime trend across all runs of this job. | [optional] 
**avgRunLag** | **double** | The average job lag across all runs of this job. | [optional] 
**maxRunLag** | **double** | The maximum job lag across all runs of this job. | [optional] 
**minRunLag** | **double** | The minimum job lag across all runs of this job. | [optional] 
**avgRunLagTrend** | **double** | The average job lag trend across all runs of this job. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


