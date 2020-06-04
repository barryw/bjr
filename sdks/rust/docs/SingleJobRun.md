# SingleJobRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> | The object's primary key. This uniquely identifies the object in the system. | [optional]
**success** | Option<**bool**> | Whether the run was successful or not. | [optional]
**return_code** | Option<**i32**> | The return code that the command exited with. 0 means success. | [optional]
**error_message** | Option<**String**> | If the run failed, the error message that was returned. | [optional]
**stdout** | Option<**String**> | The text written to STDOUT as part of the job. | [optional]
**stderr** | Option<**String**> | The text written to STDERR as part of the job. | [optional]
**start_time** | Option<**String**> | The date and time that the run started. | [optional]
**end_time** | Option<**String**> | The date and time that the run ended. | [optional]
**scheduled_start_time** | Option<**String**> | The date and time that the job should have run. | [optional]
**schedule_diff_in_seconds** | Option<**i32**> | The difference in seconds between when the job was scheduled to run and when it ran. | [optional]
**job_id** | Option<**i32**> | The job that the run is associated with. | [optional]
**is_manual** | Option<**bool**> | True if the job was run manually as opposed to run on a schedule. | [optional]
**created_at** | Option<**String**> | The date and time that the run record was created in UTC. | [optional]
**updated_at** | Option<**String**> | The date and time that the run record was last updated in UTC. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


