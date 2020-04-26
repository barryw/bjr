# Bjr4js.JobIn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new name of the job. Must be unique. | 
**cron** | **String** | The new cron expression for the job. | 
**command** | **String** | The command to run when the job fires. | 
**timezone** | **String** | The timezone to run the job in. | [optional] 
**enabled** | **Boolean** | Is the job enabled by default? | [optional] 
**tags** | **String** | A comma-separated list of tags to associate with this job. You can search jobs by their tags. | [optional] 
**successCallback** | **String** | Specify the url to receive a POST callback for all successful runs of this job. | [optional] 
**failureCallback** | **String** | Specify the url to receive a POST callback for all unsuccessful runs of this job. | [optional] 


