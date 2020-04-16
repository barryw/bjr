# SingleJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object&#x27;s primary key. This uniquely identifies the object in the system. | [optional] 
**name** | **str** | The name of the job. | [optional] 
**cron** | **str** | The cron expression for the job. | [optional] 
**enabled** | **bool** | Whether the job is enabled or not. | [optional] 
**command** | **str** | The command that is executed when the job fires. | [optional] 
**next_run** | **str** | The date and time of the job&#x27;s next run. | [optional] 
**running** | **bool** | Whether the job is currently running. | [optional] 
**timezone** | **str** | The timezone that the job will run in. | [optional] 
**tags** | **list[str]** | An array of tags associated with the job. | [optional] 
**created_at** | **datetime** | The UTC date and time that the object was created. | [optional] 
**updated_at** | **datetime** | The UTC date and time that the object was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
