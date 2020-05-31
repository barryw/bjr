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
import io.barrywalker.bjr.model.Tag;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * TagMessage
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-31T12:10:00.412Z[GMT]")
public class TagMessage {
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
  private List<Tag> _object = null;


  public TagMessage message(String message) {
    
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


  public TagMessage isError(Boolean isError) {
    
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


  public TagMessage objectType(String objectType) {
    
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


  public TagMessage statusCode(Integer statusCode) {
    
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


  public TagMessage _object(List<Tag> _object) {
    
    this._object = _object;
    return this;
  }

  public TagMessage addObjectItem(Tag _objectItem) {
    if (this._object == null) {
      this._object = new ArrayList<Tag>();
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

  public List<Tag> getObject() {
    return _object;
  }


  public void setObject(List<Tag> _object) {
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
    TagMessage tagMessage = (TagMessage) o;
    return Objects.equals(this.message, tagMessage.message) &&
        Objects.equals(this.isError, tagMessage.isError) &&
        Objects.equals(this.objectType, tagMessage.objectType) &&
        Objects.equals(this.statusCode, tagMessage.statusCode) &&
        Objects.equals(this._object, tagMessage._object);
  }

  @Override
  public int hashCode() {
    return Objects.hash(message, isError, objectType, statusCode, _object);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TagMessage {\n");
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

