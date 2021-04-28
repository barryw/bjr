# BJR::SingleJobRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] |
| **success** | **Boolean** | Whether the run was successful or not. | [optional] |
| **return_code** | **Integer** | The return code that the command exited with. 0 means success. | [optional] |
| **error_message** | **String** | If the run failed, the error message that was returned. | [optional] |
| **stdout** | **String** | The text written to STDOUT as part of the job. | [optional] |
| **stderr** | **String** | The text written to STDERR as part of the job. | [optional] |
| **start_time** | **Time** | The date and time that the run started. | [optional] |
| **end_time** | **Time** | The date and time that the run ended. | [optional] |
| **scheduled_start_time** | **Time** | The date and time that the job should have run. | [optional] |
| **schedule_diff_in_seconds** | **Integer** | The difference in seconds between when the job was scheduled to run and when it ran. | [optional] |
| **job_id** | **Integer** | The job that the run is associated with. | [optional] |
| **is_manual** | **Boolean** | True if the job was run manually as opposed to run on a schedule. | [optional] |
| **created_at** | **Time** | The date and time that the run record was created in UTC. | [optional] |
| **updated_at** | **Time** | The date and time that the run record was last updated in UTC. | [optional] |

## Example

```ruby
require 'bjr4r'

instance = BJR::SingleJobRun.new(
  id: null,
  success: null,
  return_code: null,
  error_message: null,
  stdout: null,
  stderr: null,
  start_time: null,
  end_time: null,
  scheduled_start_time: null,
  schedule_diff_in_seconds: null,
  job_id: null,
  is_manual: null,
  created_at: null,
  updated_at: null
)
```

