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
    /// SingleFolder
    /// </summary>
    [DataContract]
    public partial class SingleFolder :  IEquatable<SingleFolder>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SingleFolder" /> class.
        /// </summary>
        /// <param name="id">The object&#39;s primary key. This uniquely identifies the object in the system..</param>
        /// <param name="name">The folder&#39;s name. Must be unique..</param>
        /// <param name="expression">The search expression used to determine which jobs appear in this folder..</param>
        /// <param name="jobCount">The number of jobs that match the folder&#39;s expression..</param>
        public SingleFolder(int id = default(int), string name = default(string), string expression = default(string), int jobCount = default(int))
        {
            this.Id = id;
            this.Name = name;
            this.Expression = expression;
            this.JobCount = jobCount;
        }
        
        /// <summary>
        /// The object&#39;s primary key. This uniquely identifies the object in the system.
        /// </summary>
        /// <value>The object&#39;s primary key. This uniquely identifies the object in the system.</value>
        [DataMember(Name="id", EmitDefaultValue=false)]
        public int Id { get; set; }

        /// <summary>
        /// The folder&#39;s name. Must be unique.
        /// </summary>
        /// <value>The folder&#39;s name. Must be unique.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// The search expression used to determine which jobs appear in this folder.
        /// </summary>
        /// <value>The search expression used to determine which jobs appear in this folder.</value>
        [DataMember(Name="expression", EmitDefaultValue=false)]
        public string Expression { get; set; }

        /// <summary>
        /// The number of jobs that match the folder&#39;s expression.
        /// </summary>
        /// <value>The number of jobs that match the folder&#39;s expression.</value>
        [DataMember(Name="job_count", EmitDefaultValue=false)]
        public int JobCount { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class SingleFolder {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Expression: ").Append(Expression).Append("\n");
            sb.Append("  JobCount: ").Append(JobCount).Append("\n");
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
            return this.Equals(input as SingleFolder);
        }

        /// <summary>
        /// Returns true if SingleFolder instances are equal
        /// </summary>
        /// <param name="input">Instance of SingleFolder to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SingleFolder input)
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
                    this.Expression == input.Expression ||
                    (this.Expression != null &&
                    this.Expression.Equals(input.Expression))
                ) && 
                (
                    this.JobCount == input.JobCount ||
                    this.JobCount.Equals(input.JobCount)
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
                if (this.Expression != null)
                    hashCode = hashCode * 59 + this.Expression.GetHashCode();
                hashCode = hashCode * 59 + this.JobCount.GetHashCode();
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
