# BJR::AuthOut

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | **String** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional] 
**user_id** | **Integer** | The id of the authenticated user. | [optional] 
**message** | **String** | If authentication failed, this will contain the reason why. | [optional] 
**is_error** | **Boolean** | This will be true if the authentication was successful, and false if not. | [optional] 
**status_code** | **Integer** | The HTTP status code returned. | [optional] 

## Code Sample

```ruby
require 'BJR'

instance = BJR::AuthOut.new(auth_token: null,
                                 user_id: null,
                                 message: null,
                                 is_error: null,
                                 status_code: null)
```


