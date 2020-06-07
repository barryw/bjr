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
 * UserUpdateIn
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-06-07T12:42:43.507Z[GMT]")
public class UserUpdateIn {
  public static final String SERIALIZED_NAME_PASSWORD = "password";
  @SerializedName(SERIALIZED_NAME_PASSWORD)
  private String password;

  public static final String SERIALIZED_NAME_PASSWORD_CONFIRMATION = "password_confirmation";
  @SerializedName(SERIALIZED_NAME_PASSWORD_CONFIRMATION)
  private String passwordConfirmation;


  public UserUpdateIn password(String password) {
    
    this.password = password;
    return this;
  }

   /**
   * The new user&#39;s password.
   * @return password
  **/
  @ApiModelProperty(required = true, value = "The new user's password.")

  public String getPassword() {
    return password;
  }


  public void setPassword(String password) {
    this.password = password;
  }


  public UserUpdateIn passwordConfirmation(String passwordConfirmation) {
    
    this.passwordConfirmation = passwordConfirmation;
    return this;
  }

   /**
   * The new user&#39;s password confirmation. Must match &#39;password&#39;.
   * @return passwordConfirmation
  **/
  @ApiModelProperty(required = true, value = "The new user's password confirmation. Must match 'password'.")

  public String getPasswordConfirmation() {
    return passwordConfirmation;
  }


  public void setPasswordConfirmation(String passwordConfirmation) {
    this.passwordConfirmation = passwordConfirmation;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserUpdateIn userUpdateIn = (UserUpdateIn) o;
    return Objects.equals(this.password, userUpdateIn.password) &&
        Objects.equals(this.passwordConfirmation, userUpdateIn.passwordConfirmation);
  }

  @Override
  public int hashCode() {
    return Objects.hash(password, passwordConfirmation);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserUpdateIn {\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    passwordConfirmation: ").append(toIndentedString(passwordConfirmation)).append("\n");
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

