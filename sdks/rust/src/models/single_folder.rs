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
pub struct SingleFolder {
    /// The object's primary key. This uniquely identifies the object in the system.
    #[serde(rename = "id", skip_serializing_if = "Option::is_none")]
    pub id: Option<i32>,
    /// The folder's name. Must be unique.
    #[serde(rename = "name", skip_serializing_if = "Option::is_none")]
    pub name: Option<String>,
    /// The search expression used to determine which jobs appear in this folder.
    #[serde(rename = "expression", skip_serializing_if = "Option::is_none")]
    pub expression: Option<String>,
    /// The number of jobs that match the folder's expression.
    #[serde(rename = "job_count", skip_serializing_if = "Option::is_none")]
    pub job_count: Option<i32>,
}

impl SingleFolder {
    pub fn new() -> SingleFolder {
        SingleFolder {
            id: None,
            name: None,
            expression: None,
            job_count: None,
        }
    }
}


