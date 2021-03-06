/*
 * BJR API V1
 *
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = BJR.Client.OpenAPIDateConverter;

namespace BJR.Model
{
    /// <summary>
    /// JobStat
    /// </summary>
    [DataContract(Name = "JobStat")]
    public partial class JobStat : IEquatable<JobStat>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="JobStat" /> class.
        /// </summary>
        /// <param name="runs">The number of job runs in the period..</param>
        /// <param name="failed">The number of job runs that failed in the period..</param>
        /// <param name="jobCount">The number of jobs that executed in the period..</param>
        /// <param name="avgRuntime">The average runtime in seconds of all jobs in the period..</param>
        /// <param name="maxRuntime">The max runtime in seconds of all jobs in the period..</param>
        /// <param name="minRuntime">The min runtime in seconds of all jobs in the period..</param>
        /// <param name="totalJobs">The total number of jobs..</param>
        /// <param name="totalEnabled">Of the total number of jobs, this is how many were enabled..</param>
        /// <param name="avgJobLag">The average job lag in seconds..</param>
        /// <param name="maxJobLag">The maximum job lag in seconds..</param>
        /// <param name="minJobLag">The minimum job lag in seconds..</param>
        /// <param name="period">The runtime period..</param>
        /// <param name="startDt">The period start date..</param>
        /// <param name="endDt">The period end date..</param>
        /// <param name="createdAt">The date the record was created..</param>
        /// <param name="updatedAt">The date the record was last updated..</param>
        public JobStat(int runs = default(int), int failed = default(int), int jobCount = default(int), float avgRuntime = default(float), float maxRuntime = default(float), float minRuntime = default(float), int totalJobs = default(int), int totalEnabled = default(int), float avgJobLag = default(float), int maxJobLag = default(int), int minJobLag = default(int), string period = default(string), DateTime startDt = default(DateTime), DateTime endDt = default(DateTime), DateTime createdAt = default(DateTime), DateTime updatedAt = default(DateTime))
        {
            this.Runs = runs;
            this.Failed = failed;
            this.JobCount = jobCount;
            this.AvgRuntime = avgRuntime;
            this.MaxRuntime = maxRuntime;
            this.MinRuntime = minRuntime;
            this.TotalJobs = totalJobs;
            this.TotalEnabled = totalEnabled;
            this.AvgJobLag = avgJobLag;
            this.MaxJobLag = maxJobLag;
            this.MinJobLag = minJobLag;
            this.Period = period;
            this.StartDt = startDt;
            this.EndDt = endDt;
            this.CreatedAt = createdAt;
            this.UpdatedAt = updatedAt;
        }

        /// <summary>
        /// The number of job runs in the period.
        /// </summary>
        /// <value>The number of job runs in the period.</value>
        [DataMember(Name = "runs", EmitDefaultValue = false)]
        public int Runs { get; set; }

        /// <summary>
        /// The number of job runs that failed in the period.
        /// </summary>
        /// <value>The number of job runs that failed in the period.</value>
        [DataMember(Name = "failed", EmitDefaultValue = false)]
        public int Failed { get; set; }

        /// <summary>
        /// The number of jobs that executed in the period.
        /// </summary>
        /// <value>The number of jobs that executed in the period.</value>
        [DataMember(Name = "job_count", EmitDefaultValue = false)]
        public int JobCount { get; set; }

        /// <summary>
        /// The average runtime in seconds of all jobs in the period.
        /// </summary>
        /// <value>The average runtime in seconds of all jobs in the period.</value>
        [DataMember(Name = "avg_runtime", EmitDefaultValue = false)]
        public float AvgRuntime { get; set; }

        /// <summary>
        /// The max runtime in seconds of all jobs in the period.
        /// </summary>
        /// <value>The max runtime in seconds of all jobs in the period.</value>
        [DataMember(Name = "max_runtime", EmitDefaultValue = false)]
        public float MaxRuntime { get; set; }

        /// <summary>
        /// The min runtime in seconds of all jobs in the period.
        /// </summary>
        /// <value>The min runtime in seconds of all jobs in the period.</value>
        [DataMember(Name = "min_runtime", EmitDefaultValue = false)]
        public float MinRuntime { get; set; }

        /// <summary>
        /// The total number of jobs.
        /// </summary>
        /// <value>The total number of jobs.</value>
        [DataMember(Name = "total_jobs", EmitDefaultValue = false)]
        public int TotalJobs { get; set; }

        /// <summary>
        /// Of the total number of jobs, this is how many were enabled.
        /// </summary>
        /// <value>Of the total number of jobs, this is how many were enabled.</value>
        [DataMember(Name = "total_enabled", EmitDefaultValue = false)]
        public int TotalEnabled { get; set; }

        /// <summary>
        /// The average job lag in seconds.
        /// </summary>
        /// <value>The average job lag in seconds.</value>
        [DataMember(Name = "avg_job_lag", EmitDefaultValue = false)]
        public float AvgJobLag { get; set; }

        /// <summary>
        /// The maximum job lag in seconds.
        /// </summary>
        /// <value>The maximum job lag in seconds.</value>
        [DataMember(Name = "max_job_lag", EmitDefaultValue = false)]
        public int MaxJobLag { get; set; }

        /// <summary>
        /// The minimum job lag in seconds.
        /// </summary>
        /// <value>The minimum job lag in seconds.</value>
        [DataMember(Name = "min_job_lag", EmitDefaultValue = false)]
        public int MinJobLag { get; set; }

        /// <summary>
        /// The runtime period.
        /// </summary>
        /// <value>The runtime period.</value>
        [DataMember(Name = "period", EmitDefaultValue = false)]
        public string Period { get; set; }

        /// <summary>
        /// The period start date.
        /// </summary>
        /// <value>The period start date.</value>
        [DataMember(Name = "start_dt", EmitDefaultValue = false)]
        public DateTime StartDt { get; set; }

        /// <summary>
        /// The period end date.
        /// </summary>
        /// <value>The period end date.</value>
        [DataMember(Name = "end_dt", EmitDefaultValue = false)]
        public DateTime EndDt { get; set; }

        /// <summary>
        /// The date the record was created.
        /// </summary>
        /// <value>The date the record was created.</value>
        [DataMember(Name = "created_at", EmitDefaultValue = false)]
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// The date the record was last updated.
        /// </summary>
        /// <value>The date the record was last updated.</value>
        [DataMember(Name = "updated_at", EmitDefaultValue = false)]
        public DateTime UpdatedAt { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class JobStat {\n");
            sb.Append("  Runs: ").Append(Runs).Append("\n");
            sb.Append("  Failed: ").Append(Failed).Append("\n");
            sb.Append("  JobCount: ").Append(JobCount).Append("\n");
            sb.Append("  AvgRuntime: ").Append(AvgRuntime).Append("\n");
            sb.Append("  MaxRuntime: ").Append(MaxRuntime).Append("\n");
            sb.Append("  MinRuntime: ").Append(MinRuntime).Append("\n");
            sb.Append("  TotalJobs: ").Append(TotalJobs).Append("\n");
            sb.Append("  TotalEnabled: ").Append(TotalEnabled).Append("\n");
            sb.Append("  AvgJobLag: ").Append(AvgJobLag).Append("\n");
            sb.Append("  MaxJobLag: ").Append(MaxJobLag).Append("\n");
            sb.Append("  MinJobLag: ").Append(MinJobLag).Append("\n");
            sb.Append("  Period: ").Append(Period).Append("\n");
            sb.Append("  StartDt: ").Append(StartDt).Append("\n");
            sb.Append("  EndDt: ").Append(EndDt).Append("\n");
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
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as JobStat);
        }

        /// <summary>
        /// Returns true if JobStat instances are equal
        /// </summary>
        /// <param name="input">Instance of JobStat to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(JobStat input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Runs == input.Runs ||
                    this.Runs.Equals(input.Runs)
                ) && 
                (
                    this.Failed == input.Failed ||
                    this.Failed.Equals(input.Failed)
                ) && 
                (
                    this.JobCount == input.JobCount ||
                    this.JobCount.Equals(input.JobCount)
                ) && 
                (
                    this.AvgRuntime == input.AvgRuntime ||
                    this.AvgRuntime.Equals(input.AvgRuntime)
                ) && 
                (
                    this.MaxRuntime == input.MaxRuntime ||
                    this.MaxRuntime.Equals(input.MaxRuntime)
                ) && 
                (
                    this.MinRuntime == input.MinRuntime ||
                    this.MinRuntime.Equals(input.MinRuntime)
                ) && 
                (
                    this.TotalJobs == input.TotalJobs ||
                    this.TotalJobs.Equals(input.TotalJobs)
                ) && 
                (
                    this.TotalEnabled == input.TotalEnabled ||
                    this.TotalEnabled.Equals(input.TotalEnabled)
                ) && 
                (
                    this.AvgJobLag == input.AvgJobLag ||
                    this.AvgJobLag.Equals(input.AvgJobLag)
                ) && 
                (
                    this.MaxJobLag == input.MaxJobLag ||
                    this.MaxJobLag.Equals(input.MaxJobLag)
                ) && 
                (
                    this.MinJobLag == input.MinJobLag ||
                    this.MinJobLag.Equals(input.MinJobLag)
                ) && 
                (
                    this.Period == input.Period ||
                    (this.Period != null &&
                    this.Period.Equals(input.Period))
                ) && 
                (
                    this.StartDt == input.StartDt ||
                    (this.StartDt != null &&
                    this.StartDt.Equals(input.StartDt))
                ) && 
                (
                    this.EndDt == input.EndDt ||
                    (this.EndDt != null &&
                    this.EndDt.Equals(input.EndDt))
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
                hashCode = hashCode * 59 + this.Runs.GetHashCode();
                hashCode = hashCode * 59 + this.Failed.GetHashCode();
                hashCode = hashCode * 59 + this.JobCount.GetHashCode();
                hashCode = hashCode * 59 + this.AvgRuntime.GetHashCode();
                hashCode = hashCode * 59 + this.MaxRuntime.GetHashCode();
                hashCode = hashCode * 59 + this.MinRuntime.GetHashCode();
                hashCode = hashCode * 59 + this.TotalJobs.GetHashCode();
                hashCode = hashCode * 59 + this.TotalEnabled.GetHashCode();
                hashCode = hashCode * 59 + this.AvgJobLag.GetHashCode();
                hashCode = hashCode * 59 + this.MaxJobLag.GetHashCode();
                hashCode = hashCode * 59 + this.MinJobLag.GetHashCode();
                if (this.Period != null)
                    hashCode = hashCode * 59 + this.Period.GetHashCode();
                if (this.StartDt != null)
                    hashCode = hashCode * 59 + this.StartDt.GetHashCode();
                if (this.EndDt != null)
                    hashCode = hashCode * 59 + this.EndDt.GetHashCode();
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
