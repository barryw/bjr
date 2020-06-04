/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct JobStatMessage {
    /// The status message returned from the API call.
    #[serde(rename = "message", skip_serializing_if = "Option::is_none")]
    pub message: Option<String>,
    /// True if there was an error performing the API call.
    #[serde(rename = "is_error", skip_serializing_if = "Option::is_none")]
    pub is_error: Option<bool>,
    /// The type of object being returned.
    #[serde(rename = "object_type", skip_serializing_if = "Option::is_none")]
    pub object_type: Option<String>,
    /// The HTTP status code returned.
    #[serde(rename = "status_code", skip_serializing_if = "Option::is_none")]
    pub status_code: Option<i32>,
    #[serde(rename = "object", skip_serializing_if = "Option::is_none")]
    pub object: Option<Vec<crate::models::JobStat>>,
}

impl JobStatMessage {
    pub fn new() -> JobStatMessage {
        JobStatMessage {
            message: None,
            is_error: None,
            object_type: None,
            status_code: None,
            object: None,
        }
    }
}


