

# SingleJob


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. |  [optional]
**name** | **String** | The name of the job. |  [optional]
**cron** | **String** | The cron expression for the job. |  [optional]
**enabled** | **Boolean** | Whether the job is enabled or not. |  [optional]
**command** | **String** | The command that is executed when the job fires. |  [optional]
**lastRun** | **String** | The last time the job ran. |  [optional]
**nextRun** | **OffsetDateTime** | The date and time of the job&#39;s next run. |  [optional]
**success** | **Boolean** | Whether the last run of the job was successful. |  [optional]
**running** | **Boolean** | Whether the job is currently running. |  [optional]
**timezone** | **String** | The timezone that the job will run in. |  [optional]
**tags** | **List&lt;String&gt;** | An array of tags associated with the job. |  [optional]
**createdAt** | **OffsetDateTime** | The UTC date and time that the object was created. |  [optional]
**updatedAt** | **OffsetDateTime** | The UTC date and time that the object was last modified. |  [optional]
**successCallback** | **String** | This url will receive a POST request with details about all successful job runs. |  [optional]
**failureCallback** | **String** | This url will receive a POST request with details about all unsuccessful job runs. |  [optional]
**avgRunDuration** | **Float** | The average runtime across all runs of this job. |  [optional]
**maxRunDuration** | **Float** | The maximum runtime across all runs of this job. |  [optional]
**minRunDuration** | **Float** | The minimum runtime across all runs of this job. |  [optional]
**avgRunDurationTrend** | **Float** | The average runtime trend across all runs of this job. |  [optional]
**avgRunLag** | **Float** | The average job lag across all runs of this job. |  [optional]
**maxRunLag** | **Float** | The maximum job lag across all runs of this job. |  [optional]
**minRunLag** | **Float** | The minimum job lag across all runs of this job. |  [optional]
**avgRunLagTrend** | **Float** | The average job lag trend across all runs of this job. |  [optional]



