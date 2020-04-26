# SingleJobRun

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**success** | **bool** | Whether the run was successful or not. | [optional] 
**return_code** | **int** | The return code that the command exited with. 0 means success. | [optional] 
**error_message** | **str** | If the run failed, the error message that was returned. | [optional] 
**stdout** | **str** | The text written to STDOUT as part of the job. | [optional] 
**stderr** | **str** | The text written to STDERR as part of the job. | [optional] 
**start_time** | **datetime** | The date and time that the run started. | [optional] 
**end_time** | **datetime** | The date and time that the run ended. | [optional] 
**job_id** | **int** | The job that the run is associated with. | [optional] 
**created_at** | **datetime** | The date and time that the run record was created in UTC. | [optional] 
**updated_at** | **datetime** | The date and time that the run record was last updated in UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


