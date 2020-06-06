# BJR.Model.SingleJobRun
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Success** | **bool** | Whether the run was successful or not. | [optional] 
**ReturnCode** | **int** | The return code that the command exited with. 0 means success. | [optional] 
**ErrorMessage** | **string** | If the run failed, the error message that was returned. | [optional] 
**Stdout** | **string** | The text written to STDOUT as part of the job. | [optional] 
**Stderr** | **string** | The text written to STDERR as part of the job. | [optional] 
**StartTime** | **DateTime** | The date and time that the run started. | [optional] 
**EndTime** | **DateTime** | The date and time that the run ended. | [optional] 
**ScheduledStartTime** | **DateTime?** | The date and time that the job should have run. | [optional] 
**ScheduleDiffInSeconds** | **int?** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] 
**JobId** | **int** | The job that the run is associated with. | [optional] 
**IsManual** | **bool** | True if the job was run manually as opposed to run on a schedule. | [optional] 
**CreatedAt** | **DateTime** | The date and time that the run record was created in UTC. | [optional] 
**UpdatedAt** | **DateTime** | The date and time that the run record was last updated in UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

