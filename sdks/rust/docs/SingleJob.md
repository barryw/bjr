# SingleJob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> | The object's primary key. This uniquely identifies the object in the system. | [optional]
**name** | Option<**String**> | The name of the job. | [optional]
**cron** | Option<**String**> | The cron expression for the job. | [optional]
**enabled** | Option<**bool**> | Whether the job is enabled or not. | [optional]
**command** | Option<**String**> | The command that is executed when the job fires. | [optional]
**last_run** | Option<**String**> | The last time the job ran. | [optional]
**next_run** | Option<**String**> | The date and time of the job's next run. | [optional]
**success** | Option<**bool**> | Whether the last run of the job was successful. | [optional]
**running** | Option<**bool**> | Whether the job is currently running. | [optional]
**timezone** | Option<**String**> | The timezone that the job will run in. | [optional]
**tags** | Option<**Vec<String>**> | An array of tags associated with the job. | [optional]
**created_at** | Option<**String**> | The UTC date and time that the object was created. | [optional]
**updated_at** | Option<**String**> | The UTC date and time that the object was last modified. | [optional]
**success_callback** | Option<**String**> | This url will receive a POST request with details about all successful job runs. | [optional]
**failure_callback** | Option<**String**> | This url will receive a POST request with details about all unsuccessful job runs. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


