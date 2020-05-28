# BJR::SingleFolder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The object&#39;s primary key. This uniquely identifies the object in the system. | [optional] 
**name** | **String** | The folder&#39;s name. Must be unique. | [optional] 
**expression** | **String** | The search expression used to determine which jobs appear in this folder. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::SingleFolder.new(id: null,
                                 name: null,
                                 expression: null)
```


