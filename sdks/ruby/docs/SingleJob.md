# BJR::SingleJob

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**name** | **String** | The name of the job. | [optional] 
**cron** | **String** | The cron expression for the job. | [optional] 
**enabled** | **Boolean** | Whether the job is enabled or not. | [optional] 
**command** | **String** | The command that is executed when the job fires. | [optional] 
**last_run** | **String** | The last time the job ran. | [optional] 
**next_run** | **DateTime** | The date and time of the job&#39;s next run. | [optional] 
**success** | **Boolean** | Whether the last run of the job was successful. | [optional] 
**running** | **Boolean** | Whether the job is currently running. | [optional] 
**timezone** | **String** | The timezone that the job will run in. | [optional] 
**tags** | **Array&lt;String&gt;** | An array of tags associated with the job. | [optional] 
**created_at** | **DateTime** | The UTC date and time that the object was created. | [optional] 
**updated_at** | **DateTime** | The UTC date and time that the object was last modified. | [optional] 
**success_callback** | **String** | This url will receive a POST request with details about all successful job runs. | [optional] 
**failure_callback** | **String** | This url will receive a POST request with details about all unsuccessful job runs. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::SingleJob.new(id: null,
                                 name: null,
                                 cron: null,
                                 enabled: null,
                                 command: null,
                                 last_run: null,
                                 next_run: null,
                                 success: null,
                                 running: null,
                                 timezone: null,
                                 tags: null,
                                 created_at: null,
                                 updated_at: null,
                                 success_callback: null,
                                 failure_callback: null)
```


