/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package BJR
// BusyThreadCountMessageObject struct for BusyThreadCountMessageObject
type BusyThreadCountMessageObject struct {
	// The total number of busy workers across all pods/hosts.
	TotalBusy int32 `json:"total_busy,omitempty"`
	Hosts []BusyThreadCountMessageObjectHosts `json:"hosts,omitempty"`
}