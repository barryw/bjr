/*
 * BJR API V1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v1
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package Model;

import java.util.Objects;
import java.util.Arrays;
import Model.SingleJobRun;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * SingleJobRunMessage
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2020-04-22T18:00:45.389-04:00[America/New_York]")
public class SingleJobRunMessage {
  @SerializedName("message")
  private String message = null;

  @SerializedName("is_error")
  private Boolean isError = null;

  @SerializedName("object_type")
  private String objectType = null;

  @SerializedName("status_code")
  private Integer statusCode = null;

  @SerializedName("object")
  private SingleJobRun object = null;

  public SingleJobRunMessage message(String message) {
    this.message = message;
    return this;
  }

   /**
   * The status message returned from the API call.
   * @return message
  **/
  @Schema(description = "The status message returned from the API call.")
  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public SingleJobRunMessage isError(Boolean isError) {
    this.isError = isError;
    return this;
  }

   /**
   * True if there was an error performing the API call.
   * @return isError
  **/
  @Schema(description = "True if there was an error performing the API call.")
  public Boolean isIsError() {
    return isError;
  }

  public void setIsError(Boolean isError) {
    this.isError = isError;
  }

  public SingleJobRunMessage objectType(String objectType) {
    this.objectType = objectType;
    return this;
  }

   /**
   * The type of object being returned.
   * @return objectType
  **/
  @Schema(description = "The type of object being returned.")
  public String getObjectType() {
    return objectType;
  }

  public void setObjectType(String objectType) {
    this.objectType = objectType;
  }

  public SingleJobRunMessage statusCode(Integer statusCode) {
    this.statusCode = statusCode;
    return this;
  }

   /**
   * The HTTP status code returned.
   * @return statusCode
  **/
  @Schema(description = "The HTTP status code returned.")
  public Integer getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public SingleJobRunMessage object(SingleJobRun object) {
    this.object = object;
    return this;
  }

   /**
   * Get object
   * @return object
  **/
  @Schema(description = "")
  public SingleJobRun getObject() {
    return object;
  }

  public void setObject(SingleJobRun object) {
    this.object = object;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SingleJobRunMessage singleJobRunMessage = (SingleJobRunMessage) o;
    return Objects.equals(this.message, singleJobRunMessage.message) &&
        Objects.equals(this.isError, singleJobRunMessage.isError) &&
        Objects.equals(this.objectType, singleJobRunMessage.objectType) &&
        Objects.equals(this.statusCode, singleJobRunMessage.statusCode) &&
        Objects.equals(this.object, singleJobRunMessage.object);
  }

  @Override
  public int hashCode() {
    return Objects.hash(message, isError, objectType, statusCode, object);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SingleJobRunMessage {\n");
    
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    isError: ").append(toIndentedString(isError)).append("\n");
    sb.append("    objectType: ").append(toIndentedString(objectType)).append("\n");
    sb.append("    statusCode: ").append(toIndentedString(statusCode)).append("\n");
    sb.append("    object: ").append(toIndentedString(object)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
