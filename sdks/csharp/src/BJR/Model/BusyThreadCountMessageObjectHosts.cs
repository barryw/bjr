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
    /// BusyThreadCountMessageObjectHosts
    /// </summary>
    [DataContract]
    public partial class BusyThreadCountMessageObjectHosts :  IEquatable<BusyThreadCountMessageObjectHosts>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BusyThreadCountMessageObjectHosts" /> class.
        /// </summary>
        /// <param name="name">The name of the worker host..</param>
        /// <param name="busy">The number of busy threads on the worker..</param>
        /// <param name="pid">The process ID of the worker process..</param>
        public BusyThreadCountMessageObjectHosts(string name = default(string), int busy = default(int), int pid = default(int))
        {
            this.Name = name;
            this.Busy = busy;
            this.Pid = pid;
        }

        /// <summary>
        /// The name of the worker host.
        /// </summary>
        /// <value>The name of the worker host.</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// The number of busy threads on the worker.
        /// </summary>
        /// <value>The number of busy threads on the worker.</value>
        [DataMember(Name="busy", EmitDefaultValue=false)]
        public int Busy { get; set; }

        /// <summary>
        /// The process ID of the worker process.
        /// </summary>
        /// <value>The process ID of the worker process.</value>
        [DataMember(Name="pid", EmitDefaultValue=false)]
        public int Pid { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class BusyThreadCountMessageObjectHosts {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Busy: ").Append(Busy).Append("\n");
            sb.Append("  Pid: ").Append(Pid).Append("\n");
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
            return this.Equals(input as BusyThreadCountMessageObjectHosts);
        }

        /// <summary>
        /// Returns true if BusyThreadCountMessageObjectHosts instances are equal
        /// </summary>
        /// <param name="input">Instance of BusyThreadCountMessageObjectHosts to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(BusyThreadCountMessageObjectHosts input)
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
                    this.Busy == input.Busy ||
                    (this.Busy != null &&
                    this.Busy.Equals(input.Busy))
                ) && 
                (
                    this.Pid == input.Pid ||
                    (this.Pid != null &&
                    this.Pid.Equals(input.Pid))
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
                if (this.Busy != null)
                    hashCode = hashCode * 59 + this.Busy.GetHashCode();
                if (this.Pid != null)
                    hashCode = hashCode * 59 + this.Pid.GetHashCode();
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
