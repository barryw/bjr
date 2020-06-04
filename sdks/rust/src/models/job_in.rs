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
pub struct JobIn {
    /// The new name of the job. Must be unique.
    #[serde(rename = "name")]
    pub name: String,
    /// The new cron expression for the job.
    #[serde(rename = "cron")]
    pub cron: String,
    /// The command to run when the job fires.
    #[serde(rename = "command")]
    pub command: String,
    /// The timezone to run the job in.
    #[serde(rename = "timezone", skip_serializing_if = "Option::is_none")]
    pub timezone: Option<String>,
    /// Is the job enabled by default?
    #[serde(rename = "enabled", skip_serializing_if = "Option::is_none")]
    pub enabled: Option<bool>,
    /// A comma-separated list of tags to associate with this job. You can search jobs by their tags.
    #[serde(rename = "tags", skip_serializing_if = "Option::is_none")]
    pub tags: Option<String>,
    /// Specify the url to receive a POST callback for all successful runs of this job.
    #[serde(rename = "success_callback", skip_serializing_if = "Option::is_none")]
    pub success_callback: Option<String>,
    /// Specify the url to receive a POST callback for all unsuccessful runs of this job.
    #[serde(rename = "failure_callback", skip_serializing_if = "Option::is_none")]
    pub failure_callback: Option<String>,
}

impl JobIn {
    pub fn new(name: String, cron: String, command: String) -> JobIn {
        JobIn {
            name,
            cron,
            command,
            timezone: None,
            enabled: None,
            tags: None,
            success_callback: None,
            failure_callback: None,
        }
    }
}


