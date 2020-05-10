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
    /// TodaysStatsMessage
    /// </summary>
    [DataContract]
    public partial class TodaysStatsMessage :  IEquatable<TodaysStatsMessage>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TodaysStatsMessage" /> class.
        /// </summary>
        /// <param name="message">The status message returned from the API call..</param>
        /// <param name="isError">True if there was an error performing the API call..</param>
        /// <param name="objectType">The type of object being returned..</param>
        /// <param name="statusCode">The HTTP status code returned..</param>
        /// <param name="_object">_object.</param>
        public TodaysStatsMessage(string message = default(string), bool isError = default(bool), string objectType = default(string), int statusCode = default(int), TodaysStats _object = default(TodaysStats))
        {
            this.Message = message;
            this.IsError = isError;
            this.ObjectType = objectType;
            this.StatusCode = statusCode;
            this.Object = _object;
        }
        
        /// <summary>
        /// The status message returned from the API call.
        /// </summary>
        /// <value>The status message returned from the API call.</value>
        [DataMember(Name="message", EmitDefaultValue=false)]
        public string Message { get; set; }

        /// <summary>
        /// True if there was an error performing the API call.
        /// </summary>
        /// <value>True if there was an error performing the API call.</value>
        [DataMember(Name="is_error", EmitDefaultValue=false)]
        public bool IsError { get; set; }

        /// <summary>
        /// The type of object being returned.
        /// </summary>
        /// <value>The type of object being returned.</value>
        [DataMember(Name="object_type", EmitDefaultValue=false)]
        public string ObjectType { get; set; }

        /// <summary>
        /// The HTTP status code returned.
        /// </summary>
        /// <value>The HTTP status code returned.</value>
        [DataMember(Name="status_code", EmitDefaultValue=false)]
        public int StatusCode { get; set; }

        /// <summary>
        /// Gets or Sets Object
        /// </summary>
        [DataMember(Name="object", EmitDefaultValue=false)]
        public TodaysStats Object { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class TodaysStatsMessage {\n");
            sb.Append("  Message: ").Append(Message).Append("\n");
            sb.Append("  IsError: ").Append(IsError).Append("\n");
            sb.Append("  ObjectType: ").Append(ObjectType).Append("\n");
            sb.Append("  StatusCode: ").Append(StatusCode).Append("\n");
            sb.Append("  Object: ").Append(Object).Append("\n");
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
            return this.Equals(input as TodaysStatsMessage);
        }

        /// <summary>
        /// Returns true if TodaysStatsMessage instances are equal
        /// </summary>
        /// <param name="input">Instance of TodaysStatsMessage to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(TodaysStatsMessage input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Message == input.Message ||
                    (this.Message != null &&
                    this.Message.Equals(input.Message))
                ) && 
                (
                    this.IsError == input.IsError ||
                    (this.IsError != null &&
                    this.IsError.Equals(input.IsError))
                ) && 
                (
                    this.ObjectType == input.ObjectType ||
                    (this.ObjectType != null &&
                    this.ObjectType.Equals(input.ObjectType))
                ) && 
                (
                    this.StatusCode == input.StatusCode ||
                    (this.StatusCode != null &&
                    this.StatusCode.Equals(input.StatusCode))
                ) && 
                (
                    this.Object == input.Object ||
                    (this.Object != null &&
                    this.Object.Equals(input.Object))
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
                if (this.Message != null)
                    hashCode = hashCode * 59 + this.Message.GetHashCode();
                if (this.IsError != null)
                    hashCode = hashCode * 59 + this.IsError.GetHashCode();
                if (this.ObjectType != null)
                    hashCode = hashCode * 59 + this.ObjectType.GetHashCode();
                if (this.StatusCode != null)
                    hashCode = hashCode * 59 + this.StatusCode.GetHashCode();
                if (this.Object != null)
                    hashCode = hashCode * 59 + this.Object.GetHashCode();
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
