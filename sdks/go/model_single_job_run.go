/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package BJR
import (
	"time"
)
// SingleJobRun struct for SingleJobRun
type SingleJobRun struct {
	// The object's primary key. This uniquely identifies the object in the system.
	Id int32 `json:"id,omitempty"`
	// Whether the run was successful or not.
	Success bool `json:"success,omitempty"`
	// The return code that the command exited with. 0 means success.
	ReturnCode int32 `json:"return_code,omitempty"`
	// If the run failed, the error message that was returned.
	ErrorMessage *string `json:"error_message,omitempty"`
	// The text written to STDOUT as part of the job.
	Stdout *string `json:"stdout,omitempty"`
	// The text written to STDERR as part of the job.
	Stderr *string `json:"stderr,omitempty"`
	// The date and time that the run started.
	StartTime time.Time `json:"start_time,omitempty"`
	// The date and time that the run ended.
	EndTime time.Time `json:"end_time,omitempty"`
	// The date and time that the job should have run.
	ScheduledStartTime *time.Time `json:"scheduled_start_time,omitempty"`
	// The difference in seconds between when the job was scheduled to run and when it ran.
	ScheduleDiffInSeconds *int32 `json:"schedule_diff_in_seconds,omitempty"`
	// The job that the run is associated with.
	JobId int32 `json:"job_id,omitempty"`
	// True if the job was run manually as opposed to run on a schedule.
	IsManual bool `json:"is_manual,omitempty"`
	// The date and time that the run record was created in UTC.
	CreatedAt time.Time `json:"created_at,omitempty"`
	// The date and time that the run record was last updated in UTC.
	UpdatedAt time.Time `json:"updated_at,omitempty"`
}