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
    /// AuthOut
    /// </summary>
    [DataContract]
    public partial class AuthOut :  IEquatable<AuthOut>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AuthOut" /> class.
        /// </summary>
        /// <param name="authToken">The JWT authentication token. This must be passed in the Authorization header on subsequent requests..</param>
        /// <param name="userId">The id of the authenticated user..</param>
        /// <param name="message">If authentication failed, this will contain the reason why..</param>
        /// <param name="isError">This will be true if the authentication was successful, and false if not..</param>
        /// <param name="statusCode">The HTTP status code returned..</param>
        public AuthOut(string authToken = default(string), int? userId = default(int?), string message = default(string), bool isError = default(bool), int statusCode = default(int))
        {
            this.UserId = userId;
            this.AuthToken = authToken;
            this.UserId = userId;
            this.Message = message;
            this.IsError = isError;
            this.StatusCode = statusCode;
        }
        
        /// <summary>
        /// The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
        /// </summary>
        /// <value>The JWT authentication token. This must be passed in the Authorization header on subsequent requests.</value>
        [DataMember(Name="auth_token", EmitDefaultValue=false)]
        public string AuthToken { get; set; }

        /// <summary>
        /// The id of the authenticated user.
        /// </summary>
        /// <value>The id of the authenticated user.</value>
        [DataMember(Name="user_id", EmitDefaultValue=true)]
        public int? UserId { get; set; }

        /// <summary>
        /// If authentication failed, this will contain the reason why.
        /// </summary>
        /// <value>If authentication failed, this will contain the reason why.</value>
        [DataMember(Name="message", EmitDefaultValue=false)]
        public string Message { get; set; }

        /// <summary>
        /// This will be true if the authentication was successful, and false if not.
        /// </summary>
        /// <value>This will be true if the authentication was successful, and false if not.</value>
        [DataMember(Name="is_error", EmitDefaultValue=false)]
        public bool IsError { get; set; }

        /// <summary>
        /// The HTTP status code returned.
        /// </summary>
        /// <value>The HTTP status code returned.</value>
        [DataMember(Name="status_code", EmitDefaultValue=false)]
        public int StatusCode { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class AuthOut {\n");
            sb.Append("  AuthToken: ").Append(AuthToken).Append("\n");
            sb.Append("  UserId: ").Append(UserId).Append("\n");
            sb.Append("  Message: ").Append(Message).Append("\n");
            sb.Append("  IsError: ").Append(IsError).Append("\n");
            sb.Append("  StatusCode: ").Append(StatusCode).Append("\n");
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
            return this.Equals(input as AuthOut);
        }

        /// <summary>
        /// Returns true if AuthOut instances are equal
        /// </summary>
        /// <param name="input">Instance of AuthOut to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(AuthOut input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.AuthToken == input.AuthToken ||
                    (this.AuthToken != null &&
                    this.AuthToken.Equals(input.AuthToken))
                ) && 
                (
                    this.UserId == input.UserId ||
                    (this.UserId != null &&
                    this.UserId.Equals(input.UserId))
                ) && 
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
                    this.StatusCode == input.StatusCode ||
                    (this.StatusCode != null &&
                    this.StatusCode.Equals(input.StatusCode))
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
                if (this.AuthToken != null)
                    hashCode = hashCode * 59 + this.AuthToken.GetHashCode();
                if (this.UserId != null)
                    hashCode = hashCode * 59 + this.UserId.GetHashCode();
                if (this.Message != null)
                    hashCode = hashCode * 59 + this.Message.GetHashCode();
                if (this.IsError != null)
                    hashCode = hashCode * 59 + this.IsError.GetHashCode();
                if (this.StatusCode != null)
                    hashCode = hashCode * 59 + this.StatusCode.GetHashCode();
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
