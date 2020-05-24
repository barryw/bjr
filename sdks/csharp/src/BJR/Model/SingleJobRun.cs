/* 
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = BJR.Client.OpenAPIDateConverter;

namespace BJR.Model
{
    /// <summary>
    /// SingleJobRun
    /// </summary>
    [DataContract]
    public partial class SingleJobRun :  IEquatable<SingleJobRun>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SingleJobRun" /> class.
        /// </summary>
        /// <param name="id">The object&#39;s primary key. This uniquely identifies the object in the system..</param>
        /// <param name="success">Whether the run was successful or not..</param>
        /// <param name="returnCode">The return code that the command exited with. 0 means success..</param>
        /// <param name="errorMessage">If the run failed, the error message that was returned..</param>
        /// <param name="stdout">The text written to STDOUT as part of the job..</param>
        /// <param name="stderr">The text written to STDERR as part of the job..</param>
        /// <param name="startTime">The date and time that the run started..</param>
        /// <param name="endTime">The date and time that the run ended..</param>
        /// <param name="scheduledStartTime">The date and time that the job should have run..</param>
        /// <param name="scheduleDiffInSeconds">The difference in seconds between when the job was scheduled to run and when it ran..</param>
        /// <param name="jobId">The job that the run is associated with..</param>
        /// <param name="createdAt">The date and time that the run record was created in UTC..</param>
        /// <param name="updatedAt">The date and time that the run record was last updated in UTC..</param>
        public SingleJobRun(int id = default(int), bool success = default(bool), int returnCode = default(int), string errorMessage = default(string), string stdout = default(string), string stderr = default(string), DateTime startTime = default(DateTime), DateTime endTime = default(DateTime), DateTime scheduledStartTime = default(DateTime), int scheduleDiffInSeconds = default(int), int jobId = default(int), DateTime createdAt = default(DateTime), DateTime updatedAt = default(DateTime))
        {
            this.ErrorMessage = errorMessage;
            this.Stdout = stdout;
            this.Stderr = stderr;
            this.Id = id;
            this.Success = success;
            this.ReturnCode = returnCode;
            this.ErrorMessage = errorMessage;
            this.Stdout = stdout;
            this.Stderr = stderr;
            this.StartTime = startTime;
            this.EndTime = endTime;
            this.ScheduledStartTime = scheduledStartTime;
            this.ScheduleDiffInSeconds = scheduleDiffInSeconds;
            this.JobId = jobId;
            this.CreatedAt = createdAt;
            this.UpdatedAt = updatedAt;
        }
        
        /// <summary>
        /// The object&#39;s primary key. This uniquely identifies the object in the system.
        /// </summary>
        /// <value>The object&#39;s primary key. This uniquely identifies the object in the system.</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int Id { get; set; }

        /// <summary>
        /// Whether the run was successful or not.
        /// </summary>
        /// <value>Whether the run was successful or not.</value>
        [DataMember(Name="success", EmitDefaultValue=false)]
        public bool Success { get; set; }

        /// <summary>
        /// The return code that the command exited with. 0 means success.
        /// </summary>
        /// <value>The return code that the command exited with. 0 means success.</value>
        [DataMember(Name="return_code", EmitDefaultValue=false)]
        public int ReturnCode { get; set; }

        /// <summary>
        /// If the run failed, the error message that was returned.
        /// </summary>
        /// <value>If the run failed, the error message that was returned.</value>
        [DataMember(Name="error_message", EmitDefaultValue=true)]
        public string ErrorMessage { get; set; }

        /// <summary>
        /// The text written to STDOUT as part of the job.
        /// </summary>
        /// <value>The text written to STDOUT as part of the job.</value>
        [DataMember(Name="stdout", EmitDefaultValue=true)]
        public string Stdout { get; set; }

        /// <summary>
        /// The text written to STDERR as part of the job.
        /// </summary>
        /// <value>The text written to STDERR as part of the job.</value>
        [DataMember(Name="stderr", EmitDefaultValue=true)]
        public string Stderr { get; set; }

        /// <summary>
        /// The date and time that the run started.
        /// </summary>
        /// <value>The date and time that the run started.</value>
        [DataMember(Name="start_time", EmitDefaultValue=false)]
        public DateTime StartTime { get; set; }

        /// <summary>
        /// The date and time that the run ended.
        /// </summary>
        /// <value>The date and time that the run ended.</value>
        [DataMember(Name="end_time", EmitDefaultValue=false)]
        public DateTime EndTime { get; set; }

        /// <summary>
        /// The date and time that the job should have run.
        /// </summary>
        /// <value>The date and time that the job should have run.</value>
        [DataMember(Name="scheduled_start_time", EmitDefaultValue=false)]
        public DateTime ScheduledStartTime { get; set; }

        /// <summary>
        /// The difference in seconds between when the job was scheduled to run and when it ran.
        /// </summary>
        /// <value>The difference in seconds between when the job was scheduled to run and when it ran.</value>
        [DataMember(Name="schedule_diff_in_seconds", EmitDefaultValue=false)]
        public int ScheduleDiffInSeconds { get; set; }

        /// <summary>
        /// The job that the run is associated with.
        /// </summary>
        /// <value>The job that the run is associated with.</value>
        [DataMember(Name="job_id", EmitDefaultValue=false)]
        public int JobId { get; set; }

        /// <summary>
        /// The date and time that the run record was created in UTC.
        /// </summary>
        /// <value>The date and time that the run record was created in UTC.</value>
        [DataMember(Name="created_at", EmitDefaultValue=false)]
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// The date and time that the run record was last updated in UTC.
        /// </summary>
        /// <value>The date and time that the run record was last updated in UTC.</value>
        [DataMember(Name="updated_at", EmitDefaultValue=false)]
        public DateTime UpdatedAt { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SingleJobRun {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Success: ").Append(Success).Append("\n");
            sb.Append("  ReturnCode: ").Append(ReturnCode).Append("\n");
            sb.Append("  ErrorMessage: ").Append(ErrorMessage).Append("\n");
            sb.Append("  Stdout: ").Append(Stdout).Append("\n");
            sb.Append("  Stderr: ").Append(Stderr).Append("\n");
            sb.Append("  StartTime: ").Append(StartTime).Append("\n");
            sb.Append("  EndTime: ").Append(EndTime).Append("\n");
            sb.Append("  ScheduledStartTime: ").Append(ScheduledStartTime).Append("\n");
            sb.Append("  ScheduleDiffInSeconds: ").Append(ScheduleDiffInSeconds).Append("\n");
            sb.Append("  JobId: ").Append(JobId).Append("\n");
            sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
            sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as SingleJobRun);
        }

        /// <summary>
        /// Returns true if SingleJobRun instances are equal
        /// </summary>
        /// <param name="input">Instance of SingleJobRun to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SingleJobRun input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Success == input.Success ||
                    (this.Success != null &&
                    this.Success.Equals(input.Success))
                ) && 
                (
                    this.ReturnCode == input.ReturnCode ||
                    (this.ReturnCode != null &&
                    this.ReturnCode.Equals(input.ReturnCode))
                ) && 
                (
                    this.ErrorMessage == input.ErrorMessage ||
                    (this.ErrorMessage != null &&
                    this.ErrorMessage.Equals(input.ErrorMessage))
                ) && 
                (
                    this.Stdout == input.Stdout ||
                    (this.Stdout != null &&
                    this.Stdout.Equals(input.Stdout))
                ) && 
                (
                    this.Stderr == input.Stderr ||
                    (this.Stderr != null &&
                    this.Stderr.Equals(input.Stderr))
                ) && 
                (
                    this.StartTime == input.StartTime ||
                    (this.StartTime != null &&
                    this.StartTime.Equals(input.StartTime))
                ) && 
                (
                    this.EndTime == input.EndTime ||
                    (this.EndTime != null &&
                    this.EndTime.Equals(input.EndTime))
                ) && 
                (
                    this.ScheduledStartTime == input.ScheduledStartTime ||
                    (this.ScheduledStartTime != null &&
                    this.ScheduledStartTime.Equals(input.ScheduledStartTime))
                ) && 
                (
                    this.ScheduleDiffInSeconds == input.ScheduleDiffInSeconds ||
                    (this.ScheduleDiffInSeconds != null &&
                    this.ScheduleDiffInSeconds.Equals(input.ScheduleDiffInSeconds))
                ) && 
                (
                    this.JobId == input.JobId ||
                    (this.JobId != null &&
                    this.JobId.Equals(input.JobId))
                ) && 
                (
                    this.CreatedAt == input.CreatedAt ||
                    (this.CreatedAt != null &&
                    this.CreatedAt.Equals(input.CreatedAt))
                ) && 
                (
                    this.UpdatedAt == input.UpdatedAt ||
                    (this.UpdatedAt != null &&
                    this.UpdatedAt.Equals(input.UpdatedAt))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Success != null)
                    hashCode = hashCode * 59 + this.Success.GetHashCode();
                if (this.ReturnCode != null)
                    hashCode = hashCode * 59 + this.ReturnCode.GetHashCode();
                if (this.ErrorMessage != null)
                    hashCode = hashCode * 59 + this.ErrorMessage.GetHashCode();
                if (this.Stdout != null)
                    hashCode = hashCode * 59 + this.Stdout.GetHashCode();
                if (this.Stderr != null)
                    hashCode = hashCode * 59 + this.Stderr.GetHashCode();
                if (this.StartTime != null)
                    hashCode = hashCode * 59 + this.StartTime.GetHashCode();
                if (this.EndTime != null)
                    hashCode = hashCode * 59 + this.EndTime.GetHashCode();
                if (this.ScheduledStartTime != null)
                    hashCode = hashCode * 59 + this.ScheduledStartTime.GetHashCode();
                if (this.ScheduleDiffInSeconds != null)
                    hashCode = hashCode * 59 + this.ScheduleDiffInSeconds.GetHashCode();
                if (this.JobId != null)
                    hashCode = hashCode * 59 + this.JobId.GetHashCode();
                if (this.CreatedAt != null)
                    hashCode = hashCode * 59 + this.CreatedAt.GetHashCode();
                if (this.UpdatedAt != null)
                    hashCode = hashCode * 59 + this.UpdatedAt.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
