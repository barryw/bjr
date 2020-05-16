# BJR.Model.JobIn
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | The new name of the job. Must be unique. | 
**Cron** | **string** | The new cron expression for the job. | 
**Command** | **string** | The command to run when the job fires. | 
**Timezone** | **string** | The timezone to run the job in. | [optional] 
**Enabled** | **bool** | Is the job enabled by default? | [optional] 
**Tags** | **string** | A comma-separated list of tags to associate with this job. You can search jobs by their tags. | [optional] 
**SuccessCallback** | **string** | Specify the url to receive a POST callback for all successful runs of this job. | [optional] 
**FailureCallback** | **string** | Specify the url to receive a POST callback for all unsuccessful runs of this job. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

