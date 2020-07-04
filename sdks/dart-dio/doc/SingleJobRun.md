# BJR.model.SingleJobRun

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] [default to null]
**success** | **bool** | Whether the run was successful or not. | [optional] [default to null]
**returnCode** | **int** | The return code that the command exited with. 0 means success. | [optional] [default to null]
**errorMessage** | **String** | If the run failed, the error message that was returned. | [optional] [default to null]
**stdout** | **String** | The text written to STDOUT as part of the job. | [optional] [default to null]
**stderr** | **String** | The text written to STDERR as part of the job. | [optional] [default to null]
**startTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run started. | [optional] [default to null]
**endTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run ended. | [optional] [default to null]
**scheduledStartTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the job should have run. | [optional] [default to null]
**scheduleDiffInSeconds** | **int** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] [default to null]
**jobId** | **int** | The job that the run is associated with. | [optional] [default to null]
**isManual** | **bool** | True if the job was run manually as opposed to run on a schedule. | [optional] [default to null]
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was created in UTC. | [optional] [default to null]
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was last updated in UTC. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


