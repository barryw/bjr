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
 * AuthIn
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-12T00:48:08.620Z[GMT]")
public class AuthIn {
  public static final String SERIALIZED_NAME_USERNAME = "username";
  @SerializedName(SERIALIZED_NAME_USERNAME)
  private String username;

  public static final String SERIALIZED_NAME_PASSWORD = "password";
  @SerializedName(SERIALIZED_NAME_PASSWORD)
  private String password;


  public AuthIn username(String username) {
    
    this.username = username;
    return this;
  }

   /**
   * The username of the user to authenticate as
   * @return username
  **/
  @ApiModelProperty(required = true, value = "The username of the user to authenticate as")

  public String getUsername() {
    return username;
  }


  public void setUsername(String username) {
    this.username = username;
  }


  public AuthIn password(String password) {
    
    this.password = password;
    return this;
  }

   /**
   * The password of the user to authenticate as
   * @return password
  **/
  @ApiModelProperty(required = true, value = "The password of the user to authenticate as")

  public String getPassword() {
    return password;
  }


  public void setPassword(String password) {
    this.password = password;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AuthIn authIn = (AuthIn) o;
    return Objects.equals(this.username, authIn.username) &&
        Objects.equals(this.password, authIn.password);
  }

  @Override
  public int hashCode() {
    return Objects.hash(username, password);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class AuthIn {\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
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

