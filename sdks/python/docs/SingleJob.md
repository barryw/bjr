# SingleJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**name** | **str** | The name of the job. | [optional] 
**cron** | **str** | The cron expression for the job. | [optional] 
**enabled** | **bool** | Whether the job is enabled or not. | [optional] 
**command** | **str** | The command that is executed when the job fires. | [optional] 
**last_run** | **datetime** | The last time the job ran. | [optional] 
**next_run** | **datetime** | The date and time of the job&#39;s next run. | [optional] 
**success** | **bool** | Whether the last run of the job was successful. | [optional] 
**running** | **bool** | Whether the job is currently running. | [optional] 
**timezone** | **str** | The timezone that the job will run in. | [optional] 
**tags** | **list[str]** | An array of tags associated with the job. | [optional] 
**created_at** | **datetime** | The UTC date and time that the object was created. | [optional] 
**updated_at** | **datetime** | The UTC date and time that the object was last modified. | [optional] 
**success_callback** | **str** | This url will receive a POST request with details about all successful job runs. | [optional] 
**failure_callback** | **str** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


