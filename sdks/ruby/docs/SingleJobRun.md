# BJR::SingleJobRun

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**success** | **Boolean** | Whether the run was successful or not. | [optional] 
**return_code** | **Integer** | The return code that the command exited with. 0 means success. | [optional] 
**error_message** | **String** | If the run failed, the error message that was returned. | [optional] 
**stdout** | **String** | The text written to STDOUT as part of the job. | [optional] 
**stderr** | **String** | The text written to STDERR as part of the job. | [optional] 
**start_time** | **DateTime** | The date and time that the run started. | [optional] 
**end_time** | **DateTime** | The date and time that the run ended. | [optional] 
**job_id** | **Integer** | The job that the run is associated with. | [optional] 
**created_at** | **DateTime** | The date and time that the run record was created in UTC. | [optional] 
**updated_at** | **DateTime** | The date and time that the run record was last updated in UTC. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::SingleJobRun.new(id: null,
                                 success: null,
                                 return_code: null,
                                 error_message: null,
                                 stdout: null,
                                 stderr: null,
                                 start_time: null,
                                 end_time: null,
                                 job_id: null,
                                 created_at: null,
                                 updated_at: null)
```


