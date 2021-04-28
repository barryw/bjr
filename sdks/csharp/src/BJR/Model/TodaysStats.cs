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
    /// TodaysStats
    /// </summary>
    [DataContract]
    public partial class TodaysStats :  IEquatable<TodaysStats>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TodaysStats" /> class.
        /// </summary>
        /// <param name="totalJobs">The total number of jobs that are scheduled..</param>
        /// <param name="totalJobsTrend">The trend direction of total_jobs..</param>
        /// <param name="enabledJobs">The total number of jobs that are enabled. This will be a subset of total_jobs..</param>
        /// <param name="enabledJobsTrend">The trend direction of enabled_jobs..</param>
        /// <param name="runJobs">The number of jobs that have been run today..</param>
        /// <param name="runJobsTrend">The trend direction of run_jobs..</param>
        /// <param name="failedJobs">The number of jobs that have failed today..</param>
        /// <param name="failedJobsTrend">The trend direction of failed_jobs..</param>
        /// <param name="avgJobRuntime">The average job run time..</param>
        /// <param name="avgJobRuntimeTrend">The trend direction of avg_job_runtime..</param>
        /// <param name="maxJobRuntime">The max job run time..</param>
        /// <param name="maxJobRuntimeTrend">The trend direction of max_job_runtime..</param>
        /// <param name="minJobRuntime">The min job run time..</param>
        /// <param name="minJobRuntimeTrend">The trend direction of min_job_runtime..</param>
        /// <param name="avgJobLag">The average job lag..</param>
        /// <param name="avgJobLagTrend">The trend direction of avg_job_lag..</param>
        /// <param name="maxJobLag">The max job lag..</param>
        /// <param name="maxJobLagTrend">The trend direction of max_job_lag..</param>
        /// <param name="minJobLag">The min job lag..</param>
        /// <param name="minJobLagTrend">The trend direction of min_job_lag..</param>
        public TodaysStats(int totalJobs = default(int), float totalJobsTrend = default(float), int enabledJobs = default(int), float enabledJobsTrend = default(float), int runJobs = default(int), float runJobsTrend = default(float), int failedJobs = default(int), float failedJobsTrend = default(float), float avgJobRuntime = default(float), float avgJobRuntimeTrend = default(float), float maxJobRuntime = default(float), float maxJobRuntimeTrend = default(float), float minJobRuntime = default(float), float minJobRuntimeTrend = default(float), float avgJobLag = default(float), float avgJobLagTrend = default(float), float maxJobLag = default(float), float maxJobLagTrend = default(float), float minJobLag = default(float), float minJobLagTrend = default(float))
        {
            this.TotalJobs = totalJobs;
            this.TotalJobsTrend = totalJobsTrend;
            this.EnabledJobs = enabledJobs;
            this.EnabledJobsTrend = enabledJobsTrend;
            this.RunJobs = runJobs;
            this.RunJobsTrend = runJobsTrend;
            this.FailedJobs = failedJobs;
            this.FailedJobsTrend = failedJobsTrend;
            this.AvgJobRuntime = avgJobRuntime;
            this.AvgJobRuntimeTrend = avgJobRuntimeTrend;
            this.MaxJobRuntime = maxJobRuntime;
            this.MaxJobRuntimeTrend = maxJobRuntimeTrend;
            this.MinJobRuntime = minJobRuntime;
            this.MinJobRuntimeTrend = minJobRuntimeTrend;
            this.AvgJobLag = avgJobLag;
            this.AvgJobLagTrend = avgJobLagTrend;
            this.MaxJobLag = maxJobLag;
            this.MaxJobLagTrend = maxJobLagTrend;
            this.MinJobLag = minJobLag;
            this.MinJobLagTrend = minJobLagTrend;
        }

        /// <summary>
        /// The total number of jobs that are scheduled.
        /// </summary>
        /// <value>The total number of jobs that are scheduled.</value>
        [DataMember(Name="total_jobs", EmitDefaultValue=false)]
        public int TotalJobs { get; set; }

        /// <summary>
        /// The trend direction of total_jobs.
        /// </summary>
        /// <value>The trend direction of total_jobs.</value>
        [DataMember(Name="total_jobs_trend", EmitDefaultValue=false)]
        public float TotalJobsTrend { get; set; }

        /// <summary>
        /// The total number of jobs that are enabled. This will be a subset of total_jobs.
        /// </summary>
        /// <value>The total number of jobs that are enabled. This will be a subset of total_jobs.</value>
        [DataMember(Name="enabled_jobs", EmitDefaultValue=false)]
        public int EnabledJobs { get; set; }

        /// <summary>
        /// The trend direction of enabled_jobs.
        /// </summary>
        /// <value>The trend direction of enabled_jobs.</value>
        [DataMember(Name="enabled_jobs_trend", EmitDefaultValue=false)]
        public float EnabledJobsTrend { get; set; }

        /// <summary>
        /// The number of jobs that have been run today.
        /// </summary>
        /// <value>The number of jobs that have been run today.</value>
        [DataMember(Name="run_jobs", EmitDefaultValue=false)]
        public int RunJobs { get; set; }

        /// <summary>
        /// The trend direction of run_jobs.
        /// </summary>
        /// <value>The trend direction of run_jobs.</value>
        [DataMember(Name="run_jobs_trend", EmitDefaultValue=false)]
        public float RunJobsTrend { get; set; }

        /// <summary>
        /// The number of jobs that have failed today.
        /// </summary>
        /// <value>The number of jobs that have failed today.</value>
        [DataMember(Name="failed_jobs", EmitDefaultValue=false)]
        public int FailedJobs { get; set; }

        /// <summary>
        /// The trend direction of failed_jobs.
        /// </summary>
        /// <value>The trend direction of failed_jobs.</value>
        [DataMember(Name="failed_jobs_trend", EmitDefaultValue=false)]
        public float FailedJobsTrend { get; set; }

        /// <summary>
        /// The average job run time.
        /// </summary>
        /// <value>The average job run time.</value>
        [DataMember(Name="avg_job_runtime", EmitDefaultValue=false)]
        public float AvgJobRuntime { get; set; }

        /// <summary>
        /// The trend direction of avg_job_runtime.
        /// </summary>
        /// <value>The trend direction of avg_job_runtime.</value>
        [DataMember(Name="avg_job_runtime_trend", EmitDefaultValue=false)]
        public float AvgJobRuntimeTrend { get; set; }

        /// <summary>
        /// The max job run time.
        /// </summary>
        /// <value>The max job run time.</value>
        [DataMember(Name="max_job_runtime", EmitDefaultValue=false)]
        public float MaxJobRuntime { get; set; }

        /// <summary>
        /// The trend direction of max_job_runtime.
        /// </summary>
        /// <value>The trend direction of max_job_runtime.</value>
        [DataMember(Name="max_job_runtime_trend", EmitDefaultValue=false)]
        public float MaxJobRuntimeTrend { get; set; }

        /// <summary>
        /// The min job run time.
        /// </summary>
        /// <value>The min job run time.</value>
        [DataMember(Name="min_job_runtime", EmitDefaultValue=false)]
        public float MinJobRuntime { get; set; }

        /// <summary>
        /// The trend direction of min_job_runtime.
        /// </summary>
        /// <value>The trend direction of min_job_runtime.</value>
        [DataMember(Name="min_job_runtime_trend", EmitDefaultValue=false)]
        public float MinJobRuntimeTrend { get; set; }

        /// <summary>
        /// The average job lag.
        /// </summary>
        /// <value>The average job lag.</value>
        [DataMember(Name="avg_job_lag", EmitDefaultValue=false)]
        public float AvgJobLag { get; set; }

        /// <summary>
        /// The trend direction of avg_job_lag.
        /// </summary>
        /// <value>The trend direction of avg_job_lag.</value>
        [DataMember(Name="avg_job_lag_trend", EmitDefaultValue=false)]
        public float AvgJobLagTrend { get; set; }

        /// <summary>
        /// The max job lag.
        /// </summary>
        /// <value>The max job lag.</value>
        [DataMember(Name="max_job_lag", EmitDefaultValue=false)]
        public float MaxJobLag { get; set; }

        /// <summary>
        /// The trend direction of max_job_lag.
        /// </summary>
        /// <value>The trend direction of max_job_lag.</value>
        [DataMember(Name="max_job_lag_trend", EmitDefaultValue=false)]
        public float MaxJobLagTrend { get; set; }

        /// <summary>
        /// The min job lag.
        /// </summary>
        /// <value>The min job lag.</value>
        [DataMember(Name="min_job_lag", EmitDefaultValue=false)]
        public float MinJobLag { get; set; }

        /// <summary>
        /// The trend direction of min_job_lag.
        /// </summary>
        /// <value>The trend direction of min_job_lag.</value>
        [DataMember(Name="min_job_lag_trend", EmitDefaultValue=false)]
        public float MinJobLagTrend { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class TodaysStats {\n");
            sb.Append("  TotalJobs: ").Append(TotalJobs).Append("\n");
            sb.Append("  TotalJobsTrend: ").Append(TotalJobsTrend).Append("\n");
            sb.Append("  EnabledJobs: ").Append(EnabledJobs).Append("\n");
            sb.Append("  EnabledJobsTrend: ").Append(EnabledJobsTrend).Append("\n");
            sb.Append("  RunJobs: ").Append(RunJobs).Append("\n");
            sb.Append("  RunJobsTrend: ").Append(RunJobsTrend).Append("\n");
            sb.Append("  FailedJobs: ").Append(FailedJobs).Append("\n");
            sb.Append("  FailedJobsTrend: ").Append(FailedJobsTrend).Append("\n");
            sb.Append("  AvgJobRuntime: ").Append(AvgJobRuntime).Append("\n");
            sb.Append("  AvgJobRuntimeTrend: ").Append(AvgJobRuntimeTrend).Append("\n");
            sb.Append("  MaxJobRuntime: ").Append(MaxJobRuntime).Append("\n");
            sb.Append("  MaxJobRuntimeTrend: ").Append(MaxJobRuntimeTrend).Append("\n");
            sb.Append("  MinJobRuntime: ").Append(MinJobRuntime).Append("\n");
            sb.Append("  MinJobRuntimeTrend: ").Append(MinJobRuntimeTrend).Append("\n");
            sb.Append("  AvgJobLag: ").Append(AvgJobLag).Append("\n");
            sb.Append("  AvgJobLagTrend: ").Append(AvgJobLagTrend).Append("\n");
            sb.Append("  MaxJobLag: ").Append(MaxJobLag).Append("\n");
            sb.Append("  MaxJobLagTrend: ").Append(MaxJobLagTrend).Append("\n");
            sb.Append("  MinJobLag: ").Append(MinJobLag).Append("\n");
            sb.Append("  MinJobLagTrend: ").Append(MinJobLagTrend).Append("\n");
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
            return this.Equals(input as TodaysStats);
        }

        /// <summary>
        /// Returns true if TodaysStats instances are equal
        /// </summary>
        /// <param name="input">Instance of TodaysStats to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(TodaysStats input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.TotalJobs == input.TotalJobs ||
                    (this.TotalJobs != null &&
                    this.TotalJobs.Equals(input.TotalJobs))
                ) && 
                (
                    this.TotalJobsTrend == input.TotalJobsTrend ||
                    (this.TotalJobsTrend != null &&
                    this.TotalJobsTrend.Equals(input.TotalJobsTrend))
                ) && 
                (
                    this.EnabledJobs == input.EnabledJobs ||
                    (this.EnabledJobs != null &&
                    this.EnabledJobs.Equals(input.EnabledJobs))
                ) && 
                (
                    this.EnabledJobsTrend == input.EnabledJobsTrend ||
                    (this.EnabledJobsTrend != null &&
                    this.EnabledJobsTrend.Equals(input.EnabledJobsTrend))
                ) && 
                (
                    this.RunJobs == input.RunJobs ||
                    (this.RunJobs != null &&
                    this.RunJobs.Equals(input.RunJobs))
                ) && 
                (
                    this.RunJobsTrend == input.RunJobsTrend ||
                    (this.RunJobsTrend != null &&
                    this.RunJobsTrend.Equals(input.RunJobsTrend))
                ) && 
                (
                    this.FailedJobs == input.FailedJobs ||
                    (this.FailedJobs != null &&
                    this.FailedJobs.Equals(input.FailedJobs))
                ) && 
                (
                    this.FailedJobsTrend == input.FailedJobsTrend ||
                    (this.FailedJobsTrend != null &&
                    this.FailedJobsTrend.Equals(input.FailedJobsTrend))
                ) && 
                (
                    this.AvgJobRuntime == input.AvgJobRuntime ||
                    (this.AvgJobRuntime != null &&
                    this.AvgJobRuntime.Equals(input.AvgJobRuntime))
                ) && 
                (
                    this.AvgJobRuntimeTrend == input.AvgJobRuntimeTrend ||
                    (this.AvgJobRuntimeTrend != null &&
                    this.AvgJobRuntimeTrend.Equals(input.AvgJobRuntimeTrend))
                ) && 
                (
                    this.MaxJobRuntime == input.MaxJobRuntime ||
                    (this.MaxJobRuntime != null &&
                    this.MaxJobRuntime.Equals(input.MaxJobRuntime))
                ) && 
                (
                    this.MaxJobRuntimeTrend == input.MaxJobRuntimeTrend ||
                    (this.MaxJobRuntimeTrend != null &&
                    this.MaxJobRuntimeTrend.Equals(input.MaxJobRuntimeTrend))
                ) && 
                (
                    this.MinJobRuntime == input.MinJobRuntime ||
                    (this.MinJobRuntime != null &&
                    this.MinJobRuntime.Equals(input.MinJobRuntime))
                ) && 
                (
                    this.MinJobRuntimeTrend == input.MinJobRuntimeTrend ||
                    (this.MinJobRuntimeTrend != null &&
                    this.MinJobRuntimeTrend.Equals(input.MinJobRuntimeTrend))
                ) && 
                (
                    this.AvgJobLag == input.AvgJobLag ||
                    (this.AvgJobLag != null &&
                    this.AvgJobLag.Equals(input.AvgJobLag))
                ) && 
                (
                    this.AvgJobLagTrend == input.AvgJobLagTrend ||
                    (this.AvgJobLagTrend != null &&
                    this.AvgJobLagTrend.Equals(input.AvgJobLagTrend))
                ) && 
                (
                    this.MaxJobLag == input.MaxJobLag ||
                    (this.MaxJobLag != null &&
                    this.MaxJobLag.Equals(input.MaxJobLag))
                ) && 
                (
                    this.MaxJobLagTrend == input.MaxJobLagTrend ||
                    (this.MaxJobLagTrend != null &&
                    this.MaxJobLagTrend.Equals(input.MaxJobLagTrend))
                ) && 
                (
                    this.MinJobLag == input.MinJobLag ||
                    (this.MinJobLag != null &&
                    this.MinJobLag.Equals(input.MinJobLag))
                ) && 
                (
                    this.MinJobLagTrend == input.MinJobLagTrend ||
                    (this.MinJobLagTrend != null &&
                    this.MinJobLagTrend.Equals(input.MinJobLagTrend))
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
                if (this.TotalJobs != null)
                    hashCode = hashCode * 59 + this.TotalJobs.GetHashCode();
                if (this.TotalJobsTrend != null)
                    hashCode = hashCode * 59 + this.TotalJobsTrend.GetHashCode();
                if (this.EnabledJobs != null)
                    hashCode = hashCode * 59 + this.EnabledJobs.GetHashCode();
                if (this.EnabledJobsTrend != null)
                    hashCode = hashCode * 59 + this.EnabledJobsTrend.GetHashCode();
                if (this.RunJobs != null)
                    hashCode = hashCode * 59 + this.RunJobs.GetHashCode();
                if (this.RunJobsTrend != null)
                    hashCode = hashCode * 59 + this.RunJobsTrend.GetHashCode();
                if (this.FailedJobs != null)
                    hashCode = hashCode * 59 + this.FailedJobs.GetHashCode();
                if (this.FailedJobsTrend != null)
                    hashCode = hashCode * 59 + this.FailedJobsTrend.GetHashCode();
                if (this.AvgJobRuntime != null)
                    hashCode = hashCode * 59 + this.AvgJobRuntime.GetHashCode();
                if (this.AvgJobRuntimeTrend != null)
                    hashCode = hashCode * 59 + this.AvgJobRuntimeTrend.GetHashCode();
                if (this.MaxJobRuntime != null)
                    hashCode = hashCode * 59 + this.MaxJobRuntime.GetHashCode();
                if (this.MaxJobRuntimeTrend != null)
                    hashCode = hashCode * 59 + this.MaxJobRuntimeTrend.GetHashCode();
                if (this.MinJobRuntime != null)
                    hashCode = hashCode * 59 + this.MinJobRuntime.GetHashCode();
                if (this.MinJobRuntimeTrend != null)
                    hashCode = hashCode * 59 + this.MinJobRuntimeTrend.GetHashCode();
                if (this.AvgJobLag != null)
                    hashCode = hashCode * 59 + this.AvgJobLag.GetHashCode();
                if (this.AvgJobLagTrend != null)
                    hashCode = hashCode * 59 + this.AvgJobLagTrend.GetHashCode();
                if (this.MaxJobLag != null)
                    hashCode = hashCode * 59 + this.MaxJobLag.GetHashCode();
                if (this.MaxJobLagTrend != null)
                    hashCode = hashCode * 59 + this.MaxJobLagTrend.GetHashCode();
                if (this.MinJobLag != null)
                    hashCode = hashCode * 59 + this.MinJobLag.GetHashCode();
                if (this.MinJobLagTrend != null)
                    hashCode = hashCode * 59 + this.MinJobLagTrend.GetHashCode();
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
