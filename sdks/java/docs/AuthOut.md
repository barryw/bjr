

# AuthOut


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authToken** | **String** | The JWT authentication token. This must be passed in the Authorization header on subsequent requests. |  [optional]
**userId** | **Integer** | The id of the authenticated user. |  [optional]
**message** | **String** | If authentication failed, this will contain the reason why. |  [optional]
**isError** | **Boolean** | This will be true if the authentication was successful, and false if not. |  [optional]
**statusCode** | **Integer** | The HTTP status code returned. |  [optional]



