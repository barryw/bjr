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
pub struct JobStat {
    /// The number of job runs in the period.
    #[serde(rename = "runs", skip_serializing_if = "Option::is_none")]
    pub runs: Option<i32>,
    /// The number of job runs that failed in the period.
    #[serde(rename = "failed", skip_serializing_if = "Option::is_none")]
    pub failed: Option<i32>,
    /// The number of jobs that executed in the period.
    #[serde(rename = "job_count", skip_serializing_if = "Option::is_none")]
    pub job_count: Option<i32>,
    /// The average runtime in seconds of all jobs in the period.
    #[serde(rename = "avg_runtime", skip_serializing_if = "Option::is_none")]
    pub avg_runtime: Option<f32>,
    /// The max runtime in seconds of all jobs in the period.
    #[serde(rename = "max_runtime", skip_serializing_if = "Option::is_none")]
    pub max_runtime: Option<f32>,
    /// The min runtime in seconds of all jobs in the period.
    #[serde(rename = "min_runtime", skip_serializing_if = "Option::is_none")]
    pub min_runtime: Option<f32>,
    /// The total number of jobs.
    #[serde(rename = "total_jobs", skip_serializing_if = "Option::is_none")]
    pub total_jobs: Option<i32>,
    /// Of the total number of jobs, this is how many were enabled.
    #[serde(rename = "total_enabled", skip_serializing_if = "Option::is_none")]
    pub total_enabled: Option<i32>,
    /// The average job lag in seconds.
    #[serde(rename = "avg_job_lag", skip_serializing_if = "Option::is_none")]
    pub avg_job_lag: Option<f32>,
    /// The maximum job lag in seconds.
    #[serde(rename = "max_job_lag", skip_serializing_if = "Option::is_none")]
    pub max_job_lag: Option<i32>,
    /// The minimum job lag in seconds.
    #[serde(rename = "min_job_lag", skip_serializing_if = "Option::is_none")]
    pub min_job_lag: Option<i32>,
    /// The runtime period.
    #[serde(rename = "period", skip_serializing_if = "Option::is_none")]
    pub period: Option<String>,
    /// The period start date.
    #[serde(rename = "start_dt", skip_serializing_if = "Option::is_none")]
    pub start_dt: Option<String>,
    /// The period end date.
    #[serde(rename = "end_dt", skip_serializing_if = "Option::is_none")]
    pub end_dt: Option<String>,
    /// The date the record was created.
    #[serde(rename = "created_at", skip_serializing_if = "Option::is_none")]
    pub created_at: Option<String>,
    /// The date the record was last updated.
    #[serde(rename = "updated_at", skip_serializing_if = "Option::is_none")]
    pub updated_at: Option<String>,
}

impl JobStat {
    pub fn new() -> JobStat {
        JobStat {
            runs: None,
            failed: None,
            job_count: None,
            avg_runtime: None,
            max_runtime: None,
            min_runtime: None,
            total_jobs: None,
            total_enabled: None,
            avg_job_lag: None,
            max_job_lag: None,
            min_job_lag: None,
            period: None,
            start_dt: None,
            end_dt: None,
            created_at: None,
            updated_at: None,
        }
    }
}


