# SingleJobRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**Success** | **bool** | Whether the run was successful or not. | [optional] 
**ReturnCode** | **int32** | The return code that the command exited with. 0 means success. | [optional] 
**ErrorMessage** | Pointer to **string** | If the run failed, the error message that was returned. | [optional] 
**Stdout** | Pointer to **string** | The text written to STDOUT as part of the job. | [optional] 
**Stderr** | Pointer to **string** | The text written to STDERR as part of the job. | [optional] 
**StartTime** | [**time.Time**](time.Time.md) | The date and time that the run started. | [optional] 
**EndTime** | [**time.Time**](time.Time.md) | The date and time that the run ended. | [optional] 
**ScheduledStartTime** | [**time.Time**](time.Time.md) | The date and time that the job should have run. | [optional] 
**ScheduleDiffInSeconds** | **int32** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] 
**JobId** | **int32** | The job that the run is associated with. | [optional] 
**IsManual** | **bool** | True if the job was run manually as opposed to run on a schedule. | [optional] 
**CreatedAt** | [**time.Time**](time.Time.md) | The date and time that the run record was created in UTC. | [optional] 
**UpdatedAt** | [**time.Time**](time.Time.md) | The date and time that the run record was last updated in UTC. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


