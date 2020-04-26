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
    /// JobIn
    /// </summary>
    [DataContract]
    public partial class JobIn :  IEquatable<JobIn>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="JobIn" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected JobIn() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="JobIn" /> class.
        /// </summary>
        /// <param name="name">The new name of the job. Must be unique. (required).</param>
        /// <param name="cron">The new cron expression for the job. (required).</param>
        /// <param name="command">The command to run when the job fires. (required).</param>
        /// <param name="timezone">The timezone to run the job in..</param>
        /// <param name="enabled">Is the job enabled by default?.</param>
        /// <param name="tags">A comma-separated list of tags to associate with this job. You can search jobs by their tags..</param>
        /// <param name="successCallback">Specify the url to receive a POST callback for all successful runs of this job..</param>
        /// <param name="failureCallback">Specify the url to receive a POST callback for all unsuccessful runs of this job..</param>
        public JobIn(string name = default(string), string cron = default(string), string command = default(string), string timezone = default(string), bool enabled = default(bool), string tags = default(string), string successCallback = default(string), string failureCallback = default(string))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new InvalidDataException("name is a required property for JobIn and cannot be null");
            }
            else
            {
                this.Name = name;
            }
            
            // to ensure "cron" is required (not null)
            if (cron == null)
            {
                throw new InvalidDataException("cron is a required property for JobIn and cannot be null");
            }
            else
            {
                this.Cron = cron;
            }
            
            // to ensure "command" is required (not null)
            if (command == null)
            {
                throw new InvalidDataException("command is a required property for JobIn and cannot be null");
            }
            else
            {
                this.Command = command;
            }
            
            this.Timezone = timezone;
            this.Enabled = enabled;
            this.Tags = tags;
            this.SuccessCallback = successCallback;
            this.FailureCallback = failureCallback;
        }
        
        /// <summary>
        /// The new name of the job. Must be unique.
        /// </summary>
        /// <value>The new name of the job. Must be unique.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// The new cron expression for the job.
        /// </summary>
        /// <value>The new cron expression for the job.</value>
        [DataMember(Name="cron", EmitDefaultValue=false)]
        public string Cron { get; set; }

        /// <summary>
        /// The command to run when the job fires.
        /// </summary>
        /// <value>The command to run when the job fires.</value>
        [DataMember(Name="command", EmitDefaultValue=false)]
        public string Command { get; set; }

        /// <summary>
        /// The timezone to run the job in.
        /// </summary>
        /// <value>The timezone to run the job in.</value>
        [DataMember(Name="timezone", EmitDefaultValue=false)]
        public string Timezone { get; set; }

        /// <summary>
        /// Is the job enabled by default?
        /// </summary>
        /// <value>Is the job enabled by default?</value>
        [DataMember(Name="enabled", EmitDefaultValue=false)]
        public bool Enabled { get; set; }

        /// <summary>
        /// A comma-separated list of tags to associate with this job. You can search jobs by their tags.
        /// </summary>
        /// <value>A comma-separated list of tags to associate with this job. You can search jobs by their tags.</value>
        [DataMember(Name="tags", EmitDefaultValue=false)]
        public string Tags { get; set; }

        /// <summary>
        /// Specify the url to receive a POST callback for all successful runs of this job.
        /// </summary>
        /// <value>Specify the url to receive a POST callback for all successful runs of this job.</value>
        [DataMember(Name="success_callback", EmitDefaultValue=false)]
        public string SuccessCallback { get; set; }

        /// <summary>
        /// Specify the url to receive a POST callback for all unsuccessful runs of this job.
        /// </summary>
        /// <value>Specify the url to receive a POST callback for all unsuccessful runs of this job.</value>
        [DataMember(Name="failure_callback", EmitDefaultValue=false)]
        public string FailureCallback { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class JobIn {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Cron: ").Append(Cron).Append("\n");
            sb.Append("  Command: ").Append(Command).Append("\n");
            sb.Append("  Timezone: ").Append(Timezone).Append("\n");
            sb.Append("  Enabled: ").Append(Enabled).Append("\n");
            sb.Append("  Tags: ").Append(Tags).Append("\n");
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
            return this.Equals(input as JobIn);
        }

        /// <summary>
        /// Returns true if JobIn instances are equal
        /// </summary>
        /// <param name="input">Instance of JobIn to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(JobIn input)
        {
            if (input == null)
                return false;

            return 
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
                    this.Command == input.Command ||
                    (this.Command != null &&
                    this.Command.Equals(input.Command))
                ) && 
                (
                    this.Timezone == input.Timezone ||
                    (this.Timezone != null &&
                    this.Timezone.Equals(input.Timezone))
                ) && 
                (
                    this.Enabled == input.Enabled ||
                    (this.Enabled != null &&
                    this.Enabled.Equals(input.Enabled))
                ) && 
                (
                    this.Tags == input.Tags ||
                    (this.Tags != null &&
                    this.Tags.Equals(input.Tags))
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
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Cron != null)
                    hashCode = hashCode * 59 + this.Cron.GetHashCode();
                if (this.Command != null)
                    hashCode = hashCode * 59 + this.Command.GetHashCode();
                if (this.Timezone != null)
                    hashCode = hashCode * 59 + this.Timezone.GetHashCode();
                if (this.Enabled != null)
                    hashCode = hashCode * 59 + this.Enabled.GetHashCode();
                if (this.Tags != null)
                    hashCode = hashCode * 59 + this.Tags.GetHashCode();
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
