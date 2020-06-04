# AuthOut

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | Option<**String**> | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. | [optional]
**message** | Option<**String**> | If authentication failed, this will contain the reason why. | [optional]
**is_error** | Option<**bool**> | This will be true if the authentication was successful, and false if not. | [optional]
**status_code** | Option<**i32**> | The HTTP status code returned. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


