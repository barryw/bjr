# BjrApiV1.JobIn

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new name of the job. Must be unique. | [optional] 
**cron** | **String** | The new cron expression for the job. | [optional] 
**command** | **String** | The command to run when the job fires. | [optional] 
**timezone** | **String** | The timezone to run the job in. | [optional] 
**enabled** | **Boolean** | Is the job enabled by default? | [optional] 
**tags** | **String** | A comma-separated list of tags to associate with this job. You can search jobs by their tags. | [optional] 
