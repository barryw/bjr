# BJR.model.JobIn

## Load the model package
```dart
import 'package:BJR/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new name of the job. Must be unique. | 
**cron** | **String** | The new cron expression for the job. | 
**command** | **String** | The command to run when the job fires. | 
**timezone** | **String** | The timezone to run the job in. | [optional] 
**enabled** | **bool** | Is the job enabled by default? | [optional] 
**tags** | **String** | A comma-separated list of tags to associate with this job. You can search jobs by their tags. | [optional] 
**successCallback** | **String** | Specify the url to receive a POST callback for all successful runs of this job. | [optional] 
**failureCallback** | **String** | Specify the url to receive a POST callback for all unsuccessful runs of this job. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


