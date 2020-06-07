/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package BJR
// SingleFolder struct for SingleFolder
type SingleFolder struct {
	// The object's primary key. This uniquely identifies the object in the system.
	Id int32 `json:"id,omitempty"`
	// The folder's name. Must be unique.
	Name string `json:"name,omitempty"`
	// The search expression used to determine which jobs appear in this folder.
	Expression string `json:"expression,omitempty"`
	// The number of jobs that match the folder's expression.
	JobCount int32 `json:"job_count,omitempty"`
}