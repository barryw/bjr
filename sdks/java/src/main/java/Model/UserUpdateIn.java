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
 * UserUpdateIn
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2020-04-16T22:12:09.768-04:00[America/New_York]")
public class UserUpdateIn {
  @SerializedName("password")
  private String password = null;

  @SerializedName("password_confirmation")
  private String passwordConfirmation = null;

  public UserUpdateIn password(String password) {
    this.password = password;
    return this;
  }

   /**
   * The new user&#x27;s password.
   * @return password
  **/
  @Schema(description = "The new user's password.")
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
   * The new user&#x27;s password confirmation. Must match &#x27;password&#x27;.
   * @return passwordConfirmation
  **/
  @Schema(description = "The new user's password confirmation. Must match 'password'.")
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
