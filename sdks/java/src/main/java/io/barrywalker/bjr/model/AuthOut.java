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
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * AuthOut
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-31T12:10:00.412Z[GMT]")
public class AuthOut {
  public static final String SERIALIZED_NAME_AUTH_TOKEN = "auth_token";
  @SerializedName(SERIALIZED_NAME_AUTH_TOKEN)
  private String authToken;

  public static final String SERIALIZED_NAME_MESSAGE = "message";
  @SerializedName(SERIALIZED_NAME_MESSAGE)
  private String message;

  public static final String SERIALIZED_NAME_IS_ERROR = "is_error";
  @SerializedName(SERIALIZED_NAME_IS_ERROR)
  private Boolean isError;

  public static final String SERIALIZED_NAME_STATUS_CODE = "status_code";
  @SerializedName(SERIALIZED_NAME_STATUS_CODE)
  private Integer statusCode;


  public AuthOut authToken(String authToken) {
    
    this.authToken = authToken;
    return this;
  }

   /**
   * The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
   * @return authToken
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The JWT authentication token. This must be passed in the Authorization header on subsequent requests.")

  public String getAuthToken() {
    return authToken;
  }


  public void setAuthToken(String authToken) {
    this.authToken = authToken;
  }


  public AuthOut message(String message) {
    
    this.message = message;
    return this;
  }

   /**
   * If authentication failed, this will contain the reason why.
   * @return message
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "If authentication failed, this will contain the reason why.")

  public String getMessage() {
    return message;
  }


  public void setMessage(String message) {
    this.message = message;
  }


  public AuthOut isError(Boolean isError) {
    
    this.isError = isError;
    return this;
  }

   /**
   * This will be true if the authentication was successful, and false if not.
   * @return isError
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "This will be true if the authentication was successful, and false if not.")

  public Boolean getIsError() {
    return isError;
  }


  public void setIsError(Boolean isError) {
    this.isError = isError;
  }


  public AuthOut statusCode(Integer statusCode) {
    
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AuthOut authOut = (AuthOut) o;
    return Objects.equals(this.authToken, authOut.authToken) &&
        Objects.equals(this.message, authOut.message) &&
        Objects.equals(this.isError, authOut.isError) &&
        Objects.equals(this.statusCode, authOut.statusCode);
  }

  @Override
  public int hashCode() {
    return Objects.hash(authToken, message, isError, statusCode);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AuthOut {\n");
    sb.append("    authToken: ").append(toIndentedString(authToken)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    isError: ").append(toIndentedString(isError)).append("\n");
    sb.append("    statusCode: ").append(toIndentedString(statusCode)).append("\n");
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

