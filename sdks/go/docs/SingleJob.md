# SingleJob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Name** | **string** | The name of the job. | [optional] 
**Cron** | **string** | The cron expression for the job. | [optional] 
**Enabled** | **bool** | Whether the job is enabled or not. | [optional] 
**Command** | **string** | The command that is executed when the job fires. | [optional] 
**LastRun** | Pointer to **string** | The last time the job ran. | [optional] 
**NextRun** | [**time.Time**](time.Time.md) | The date and time of the job&#39;s next run. | [optional] 
**Success** | **bool** | Whether the last run of the job was successful. | [optional] 
**Running** | **bool** | Whether the job is currently running. | [optional] 
**Timezone** | **string** | The timezone that the job will run in. | [optional] 
**Tags** | **[]string** | An array of tags associated with the job. | [optional] 
**CreatedAt** | [**time.Time**](time.Time.md) | The UTC date and time that the object was created. | [optional] 
**UpdatedAt** | [**time.Time**](time.Time.md) | The UTC date and time that the object was last modified. | [optional] 
**SuccessCallback** | Pointer to **string** | This url will receive a POST request with details about all successful job runs. | [optional] 
**FailureCallback** | Pointer to **string** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


