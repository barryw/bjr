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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * AuthOut
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2020-04-22T18:00:45.389-04:00[America/New_York]")
public class AuthOut {
  @SerializedName("auth_token")
  private String authToken = null;

  @SerializedName("message")
  private String message = null;

  @SerializedName("is_error")
  private Boolean isError = null;

  @SerializedName("status_code")
  private Integer statusCode = null;

  public AuthOut authToken(String authToken) {
    this.authToken = authToken;
    return this;
  }

   /**
   * The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
   * @return authToken
  **/
  @Schema(description = "The JWT authentication token. This must be passed in the Authorization header on subsequent requests.")
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
  @Schema(description = "If authentication failed, this will contain the reason why.")
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
  @Schema(description = "This will be true if the authentication was successful, and false if not.")
  public Boolean isIsError() {
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
  @Schema(description = "The HTTP status code returned.")
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
