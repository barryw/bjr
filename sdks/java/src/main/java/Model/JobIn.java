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
 * JobIn
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2020-04-21T12:30:36.637-04:00[America/New_York]")
public class JobIn {
  @SerializedName("name")
  private String name = null;

  @SerializedName("cron")
  private String cron = null;

  @SerializedName("command")
  private String command = null;

  @SerializedName("timezone")
  private String timezone = null;

  @SerializedName("enabled")
  private Boolean enabled = null;

  @SerializedName("tags")
  private String tags = null;

  @SerializedName("success_callback")
  private String successCallback = null;

  @SerializedName("failure_callback")
  private String failureCallback = null;

  public JobIn name(String name) {
    this.name = name;
    return this;
  }

   /**
   * The new name of the job. Must be unique.
   * @return name
  **/
  @Schema(description = "The new name of the job. Must be unique.")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public JobIn cron(String cron) {
    this.cron = cron;
    return this;
  }

   /**
   * The new cron expression for the job.
   * @return cron
  **/
  @Schema(description = "The new cron expression for the job.")
  public String getCron() {
    return cron;
  }

  public void setCron(String cron) {
    this.cron = cron;
  }

  public JobIn command(String command) {
    this.command = command;
    return this;
  }

   /**
   * The command to run when the job fires.
   * @return command
  **/
  @Schema(description = "The command to run when the job fires.")
  public String getCommand() {
    return command;
  }

  public void setCommand(String command) {
    this.command = command;
  }

  public JobIn timezone(String timezone) {
    this.timezone = timezone;
    return this;
  }

   /**
   * The timezone to run the job in.
   * @return timezone
  **/
  @Schema(description = "The timezone to run the job in.")
  public String getTimezone() {
    return timezone;
  }

  public void setTimezone(String timezone) {
    this.timezone = timezone;
  }

  public JobIn enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

   /**
   * Is the job enabled by default?
   * @return enabled
  **/
  @Schema(description = "Is the job enabled by default?")
  public Boolean isEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public JobIn tags(String tags) {
    this.tags = tags;
    return this;
  }

   /**
   * A comma-separated list of tags to associate with this job. You can search jobs by their tags.
   * @return tags
  **/
  @Schema(description = "A comma-separated list of tags to associate with this job. You can search jobs by their tags.")
  public String getTags() {
    return tags;
  }

  public void setTags(String tags) {
    this.tags = tags;
  }

  public JobIn successCallback(String successCallback) {
    this.successCallback = successCallback;
    return this;
  }

   /**
   * Specify the url to receive a POST callback for all successful runs of this job.
   * @return successCallback
  **/
  @Schema(description = "Specify the url to receive a POST callback for all successful runs of this job.")
  public String getSuccessCallback() {
    return successCallback;
  }

  public void setSuccessCallback(String successCallback) {
    this.successCallback = successCallback;
  }

  public JobIn failureCallback(String failureCallback) {
    this.failureCallback = failureCallback;
    return this;
  }

   /**
   * Specify the url to receive a POST callback for all unsuccessful runs of this job.
   * @return failureCallback
  **/
  @Schema(description = "Specify the url to receive a POST callback for all unsuccessful runs of this job.")
  public String getFailureCallback() {
    return failureCallback;
  }

  public void setFailureCallback(String failureCallback) {
    this.failureCallback = failureCallback;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    JobIn jobIn = (JobIn) o;
    return Objects.equals(this.name, jobIn.name) &&
        Objects.equals(this.cron, jobIn.cron) &&
        Objects.equals(this.command, jobIn.command) &&
        Objects.equals(this.timezone, jobIn.timezone) &&
        Objects.equals(this.enabled, jobIn.enabled) &&
        Objects.equals(this.tags, jobIn.tags) &&
        Objects.equals(this.successCallback, jobIn.successCallback) &&
        Objects.equals(this.failureCallback, jobIn.failureCallback);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, cron, command, timezone, enabled, tags, successCallback, failureCallback);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JobIn {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    cron: ").append(toIndentedString(cron)).append("\n");
    sb.append("    command: ").append(toIndentedString(command)).append("\n");
    sb.append("    timezone: ").append(toIndentedString(timezone)).append("\n");
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    successCallback: ").append(toIndentedString(successCallback)).append("\n");
    sb.append("    failureCallback: ").append(toIndentedString(failureCallback)).append("\n");
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
