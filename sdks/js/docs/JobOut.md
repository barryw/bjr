# BjrApiV1.JobOut

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Number** | The unique id of the job. | [optional] 
**name** | **String** | The name of the job. | [optional] 
**cron** | **String** | The cron expression for the job. | [optional] 
**enabled** | **Boolean** | Whether the job is enabled or not. | [optional] 
**command** | **String** | The command that is executed when the job fires. | [optional] 
**nextRun** | **String** | The date and time of the job&#x27;s next run. | [optional] 
**running** | **Boolean** | Whether the job is currently running. | [optional] 
**timezone** | **String** | The timezone that the job will run in. | [optional] 
**tags** | **[String]** | An array of tags associated with the job. | [optional] 
