# SingleJobRun

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The object&#x27;s primary key. This uniquely identifies the object in the system. |  [optional]
**success** | **Boolean** | Whether the run was successful or not. |  [optional]
**returnCode** | **Integer** | The return code that the command exited with. 0 means success. |  [optional]
**errorMessage** | **String** | If the run failed, the error message that was returned. |  [optional]
**stdout** | **String** | The text written to STDOUT as part of the job. |  [optional]
**stderr** | **String** | The text written to STDERR as part of the job. |  [optional]
**startTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run started. |  [optional]
**endTime** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run ended. |  [optional]
**jobId** | **Integer** | The job that the run is associated with. |  [optional]
**createdAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was created in UTC. |  [optional]
**updatedAt** | [**OffsetDateTime**](OffsetDateTime.md) | The date and time that the run record was last updated in UTC. |  [optional]
