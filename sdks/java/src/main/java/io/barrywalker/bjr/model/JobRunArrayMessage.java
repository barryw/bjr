/*
 * BJR API V1
 * API specification for the BJR job server.
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package io.barrywalker.bjr.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.barrywalker.bjr.model.SingleJobRun;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * JobRunArrayMessage
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-06-07T12:51:51.966Z[GMT]")
public class JobRunArrayMessage {
  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_IS_ERROR = "is_error";
  @SerializedName(SERIALIZED_NAME_IS_ERROR)
  private Boolean isError;

  public static final String SERIALIZED_NAME_OBJECT_TYPE = "object_type";
  @SerializedName(SERIALIZED_NAME_OBJECT_TYPE)
  private String objectType;

  public static final String SERIALIZED_NAME_STATUS_CODE = "status_code";
  @SerializedName(SERIALIZED_NAME_STATUS_CODE)
  private Integer statusCode;

  public static final String SERIALIZED_NAME_OBJECT = "object";
  @SerializedName(SERIALIZED_NAME_OBJECT)
  private List<SingleJobRun> _object = null;


  public JobRunArrayMessage message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * The status message returned from the API call.
   * @return message
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The status message returned from the API call.")

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public JobRunArrayMessage isError(Boolean isError) {
    
    this.isError = isError;
    return this;
  }

   /**
   * True if there was an error performing the API call.
   * @return isError
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "True if there was an error performing the API call.")

  public Boolean getIsError() {
    return isError;
  }


  public void setIsError(Boolean isError) {
    this.isError = isError;
  }


  public JobRunArrayMessage objectType(String objectType) {
    
    this.objectType = objectType;
    return this;
  }

   /**
   * The type of object being returned.
   * @return objectType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The type of object being returned.")

  public String getObjectType() {
    return objectType;
  }


  public void setObjectType(String objectType) {
    this.objectType = objectType;
  }


  public JobRunArrayMessage statusCode(Integer statusCode) {
    
    this.statusCode = statusCode;
    return this;
  }

   /**
   * The HTTP status code returned.
   * @return statusCode
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The HTTP status code returned.")

  public Integer getStatusCode() {
    return statusCode;
  }


  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }


  public JobRunArrayMessage _object(List<SingleJobRun> _object) {
    
    this._object = _object;
    return this;
  }

  public JobRunArrayMessage addObjectItem(SingleJobRun _objectItem) {
    if (this._object == null) {
      this._object = new ArrayList<SingleJobRun>();
    }
    this._object.add(_objectItem);
    return this;
  }

   /**
   * Get _object
   * @return _object
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<SingleJobRun> getObject() {
    return _object;
  }


  public void setObject(List<SingleJobRun> _object) {
    this._object = _object;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JobRunArrayMessage jobRunArrayMessage = (JobRunArrayMessage) o;
    return Objects.equals(this.message, jobRunArrayMessage.message) &&
        Objects.equals(this.isError, jobRunArrayMessage.isError) &&
        Objects.equals(this.objectType, jobRunArrayMessage.objectType) &&
        Objects.equals(this.statusCode, jobRunArrayMessage.statusCode) &&
        Objects.equals(this._object, jobRunArrayMessage._object);
  }

  @Override
  public int hashCode() {
    return Objects.hash(message, isError, objectType, statusCode, _object);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JobRunArrayMessage {\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    isError: ").append(toIndentedString(isError)).append("\n");
    sb.append("    objectType: ").append(toIndentedString(objectType)).append("\n");
    sb.append("    statusCode: ").append(toIndentedString(statusCode)).append("\n");
    sb.append("    _object: ").append(toIndentedString(_object)).append("\n");
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

