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
    /// SingleJob
    /// </summary>
    [DataContract]
    public partial class SingleJob :  IEquatable<SingleJob>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SingleJob" /> class.
        /// </summary>
        /// <param name="id">The object&#39;s primary key. This uniquely identifies the object in the system..</param>
        /// <param name="name">The name of the job..</param>
        /// <param name="cron">The cron expression for the job..</param>
        /// <param name="enabled">Whether the job is enabled or not..</param>
        /// <param name="command">The command that is executed when the job fires..</param>
        /// <param name="lastRun">The last time the job ran..</param>
        /// <param name="nextRun">The date and time of the job&#39;s next run..</param>
        /// <param name="success">Whether the last run of the job was successful..</param>
        /// <param name="running">Whether the job is currently running..</param>
        /// <param name="timezone">The timezone that the job will run in..</param>
        /// <param name="tags">An array of tags associated with the job..</param>
        /// <param name="createdAt">The UTC date and time that the object was created..</param>
        /// <param name="updatedAt">The UTC date and time that the object was last modified..</param>
        /// <param name="successCallback">This url will receive a POST request with details about all successful job runs..</param>
        /// <param name="failureCallback">This url will receive a POST request with details about all unsuccessful job runs..</param>
        public SingleJob(int id = default(int), string name = default(string), string cron = default(string), bool enabled = default(bool), string command = default(string), string lastRun = default(string), DateTime nextRun = default(DateTime), bool success = default(bool), bool running = default(bool), string timezone = default(string), List<string> tags = default(List<string>), DateTime createdAt = default(DateTime), DateTime updatedAt = default(DateTime), string successCallback = default(string), string failureCallback = default(string))
        {
            this.Id = id;
            this.Name = name;
            this.Cron = cron;
            this.Enabled = enabled;
            this.Command = command;
            this.LastRun = lastRun;
            this.NextRun = nextRun;
            this.Success = success;
            this.Running = running;
            this.Timezone = timezone;
            this.Tags = tags;
            this.CreatedAt = createdAt;
            this.UpdatedAt = updatedAt;
            this.SuccessCallback = successCallback;
            this.FailureCallback = failureCallback;
        }
        
        /// <summary>
        /// The object&#39;s primary key. This uniquely identifies the object in the system.
        /// </summary>
        /// <value>The object&#39;s primary key. This uniquely identifies the object in the system.</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int Id { get; set; }

        /// <summary>
        /// The name of the job.
        /// </summary>
        /// <value>The name of the job.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// The cron expression for the job.
        /// </summary>
        /// <value>The cron expression for the job.</value>
        [DataMember(Name="cron", EmitDefaultValue=false)]
        public string Cron { get; set; }

        /// <summary>
        /// Whether the job is enabled or not.
        /// </summary>
        /// <value>Whether the job is enabled or not.</value>
        [DataMember(Name="enabled", EmitDefaultValue=false)]
        public bool Enabled { get; set; }

        /// <summary>
        /// The command that is executed when the job fires.
        /// </summary>
        /// <value>The command that is executed when the job fires.</value>
        [DataMember(Name="command", EmitDefaultValue=false)]
        public string Command { get; set; }

        /// <summary>
        /// The last time the job ran.
        /// </summary>
        /// <value>The last time the job ran.</value>
        [DataMember(Name="last_run", EmitDefaultValue=true)]
        public string LastRun { get; set; }

        /// <summary>
        /// The date and time of the job&#39;s next run.
        /// </summary>
        /// <value>The date and time of the job&#39;s next run.</value>
        [DataMember(Name="next_run", EmitDefaultValue=false)]
        public DateTime NextRun { get; set; }

        /// <summary>
        /// Whether the last run of the job was successful.
        /// </summary>
        /// <value>Whether the last run of the job was successful.</value>
        [DataMember(Name="success", EmitDefaultValue=false)]
        public bool Success { get; set; }

        /// <summary>
        /// Whether the job is currently running.
        /// </summary>
        /// <value>Whether the job is currently running.</value>
        [DataMember(Name="running", EmitDefaultValue=false)]
        public bool Running { get; set; }

        /// <summary>
        /// The timezone that the job will run in.
        /// </summary>
        /// <value>The timezone that the job will run in.</value>
        [DataMember(Name="timezone", EmitDefaultValue=false)]
        public string Timezone { get; set; }

        /// <summary>
        /// An array of tags associated with the job.
        /// </summary>
        /// <value>An array of tags associated with the job.</value>
        [DataMember(Name="tags", EmitDefaultValue=false)]
        public List<string> Tags { get; set; }

        /// <summary>
        /// The UTC date and time that the object was created.
        /// </summary>
        /// <value>The UTC date and time that the object was created.</value>
        [DataMember(Name="created_at", EmitDefaultValue=false)]
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// The UTC date and time that the object was last modified.
        /// </summary>
        /// <value>The UTC date and time that the object was last modified.</value>
        [DataMember(Name="updated_at", EmitDefaultValue=false)]
        public DateTime UpdatedAt { get; set; }

        /// <summary>
        /// This url will receive a POST request with details about all successful job runs.
        /// </summary>
        /// <value>This url will receive a POST request with details about all successful job runs.</value>
        [DataMember(Name="success_callback", EmitDefaultValue=true)]
        public string SuccessCallback { get; set; }

        /// <summary>
        /// This url will receive a POST request with details about all unsuccessful job runs.
        /// </summary>
        /// <value>This url will receive a POST request with details about all unsuccessful job runs.</value>
        [DataMember(Name="failure_callback", EmitDefaultValue=true)]
        public string FailureCallback { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SingleJob {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Cron: ").Append(Cron).Append("\n");
            sb.Append("  Enabled: ").Append(Enabled).Append("\n");
            sb.Append("  Command: ").Append(Command).Append("\n");
            sb.Append("  LastRun: ").Append(LastRun).Append("\n");
            sb.Append("  NextRun: ").Append(NextRun).Append("\n");
            sb.Append("  Success: ").Append(Success).Append("\n");
            sb.Append("  Running: ").Append(Running).Append("\n");
            sb.Append("  Timezone: ").Append(Timezone).Append("\n");
            sb.Append("  Tags: ").Append(Tags).Append("\n");
            sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
            sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
            sb.Append("  SuccessCallback: ").Append(SuccessCallback).Append("\n");
            sb.Append("  FailureCallback: ").Append(FailureCallback).Append("\n");
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
            return this.Equals(input as SingleJob);
        }

        /// <summary>
        /// Returns true if SingleJob instances are equal
        /// </summary>
        /// <param name="input">Instance of SingleJob to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SingleJob input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    this.Id.Equals(input.Id)
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Cron == input.Cron ||
                    (this.Cron != null &&
                    this.Cron.Equals(input.Cron))
                ) && 
                (
                    this.Enabled == input.Enabled ||
                    this.Enabled.Equals(input.Enabled)
                ) && 
                (
                    this.Command == input.Command ||
                    (this.Command != null &&
                    this.Command.Equals(input.Command))
                ) && 
                (
                    this.LastRun == input.LastRun ||
                    (this.LastRun != null &&
                    this.LastRun.Equals(input.LastRun))
                ) && 
                (
                    this.NextRun == input.NextRun ||
                    (this.NextRun != null &&
                    this.NextRun.Equals(input.NextRun))
                ) && 
                (
                    this.Success == input.Success ||
                    this.Success.Equals(input.Success)
                ) && 
                (
                    this.Running == input.Running ||
                    this.Running.Equals(input.Running)
                ) && 
                (
                    this.Timezone == input.Timezone ||
                    (this.Timezone != null &&
                    this.Timezone.Equals(input.Timezone))
                ) && 
                (
                    this.Tags == input.Tags ||
                    this.Tags != null &&
                    input.Tags != null &&
                    this.Tags.SequenceEqual(input.Tags)
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
                ) && 
                (
                    this.SuccessCallback == input.SuccessCallback ||
                    (this.SuccessCallback != null &&
                    this.SuccessCallback.Equals(input.SuccessCallback))
                ) && 
                (
                    this.FailureCallback == input.FailureCallback ||
                    (this.FailureCallback != null &&
                    this.FailureCallback.Equals(input.FailureCallback))
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
                hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Cron != null)
                    hashCode = hashCode * 59 + this.Cron.GetHashCode();
                hashCode = hashCode * 59 + this.Enabled.GetHashCode();
                if (this.Command != null)
                    hashCode = hashCode * 59 + this.Command.GetHashCode();
                if (this.LastRun != null)
                    hashCode = hashCode * 59 + this.LastRun.GetHashCode();
                if (this.NextRun != null)
                    hashCode = hashCode * 59 + this.NextRun.GetHashCode();
                hashCode = hashCode * 59 + this.Success.GetHashCode();
                hashCode = hashCode * 59 + this.Running.GetHashCode();
                if (this.Timezone != null)
                    hashCode = hashCode * 59 + this.Timezone.GetHashCode();
                if (this.Tags != null)
                    hashCode = hashCode * 59 + this.Tags.GetHashCode();
                if (this.CreatedAt != null)
                    hashCode = hashCode * 59 + this.CreatedAt.GetHashCode();
                if (this.UpdatedAt != null)
                    hashCode = hashCode * 59 + this.UpdatedAt.GetHashCode();
                if (this.SuccessCallback != null)
                    hashCode = hashCode * 59 + this.SuccessCallback.GetHashCode();
                if (this.FailureCallback != null)
                    hashCode = hashCode * 59 + this.FailureCallback.GetHashCode();
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