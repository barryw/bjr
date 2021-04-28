# BJR.model.SingleJobRun

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object's primary key. This uniquely identifies the object in the system. | [optional] 
**success** | **bool** | Whether the run was successful or not. | [optional] 
**returnCode** | **int** | The return code that the command exited with. 0 means success. | [optional] 
**errorMessage** | **String** | If the run failed, the error message that was returned. | [optional] 
**stdout** | **String** | The text written to STDOUT as part of the job. | [optional] 
**stderr** | **String** | The text written to STDERR as part of the job. | [optional] 
**startTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run started. | [optional] 
**endTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run ended. | [optional] 
**scheduledStartTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the job should have run. | [optional] 
**scheduleDiffInSeconds** | **int** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] 
**jobId** | **int** | The job that the run is associated with. | [optional] 
**isManual** | **bool** | True if the job was run manually as opposed to run on a schedule. | [optional] 
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was created in UTC. | [optional] 
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was last updated in UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


