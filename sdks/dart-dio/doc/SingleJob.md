# BJR.model.SingleJob

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] [default to null]
**name** | **String** | The name of the job. | [optional] [default to null]
**cron** | **String** | The cron expression for the job. | [optional] [default to null]
**enabled** | **bool** | Whether the job is enabled or not. | [optional] [default to null]
**command** | **String** | The command that is executed when the job fires. | [optional] [default to null]
**lastRun** | **String** | The last time the job ran. | [optional] [default to null]
**nextRun** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time of the job&#39;s next run. | [optional] [default to null]
**success** | **bool** | Whether the last run of the job was successful. | [optional] [default to null]
**running** | **bool** | Whether the job is currently running. | [optional] [default to null]
**timezone** | **String** | The timezone that the job will run in. | [optional] [default to null]
**tags** | **BuiltList&lt;String&gt;** | An array of tags associated with the job. | [optional] [default to const []]
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The UTC date and time that the object was created. | [optional] [default to null]
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The UTC date and time that the object was last modified. | [optional] [default to null]
**successCallback** | **String** | This url will receive a POST request with details about all successful job runs. | [optional] [default to null]
**failureCallback** | **String** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] [default to null]
**avgRunDuration** | **double** | The average runtime across all runs of this job. | [optional] [default to null]
**maxRunDuration** | **double** | The maximum runtime across all runs of this job. | [optional] [default to null]
**minRunDuration** | **double** | The minimum runtime across all runs of this job. | [optional] [default to null]
**avgRunDurationTrend** | **double** | The average runtime trend across all runs of this job. | [optional] [default to null]
**avgRunLag** | **double** | The average job lag across all runs of this job. | [optional] [default to null]
**maxRunLag** | **double** | The maximum job lag across all runs of this job. | [optional] [default to null]
**minRunLag** | **double** | The minimum job lag across all runs of this job. | [optional] [default to null]
**avgRunLagTrend** | **double** | The average job lag trend across all runs of this job. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


