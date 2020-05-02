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
 * JobIn
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-02T18:52:12.981Z[GMT]")
public class JobIn {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_CRON = "cron";
  @SerializedName(SERIALIZED_NAME_CRON)
  private String cron;

  public static final String SERIALIZED_NAME_COMMAND = "command";
  @SerializedName(SERIALIZED_NAME_COMMAND)
  private String command;

  public static final String SERIALIZED_NAME_TIMEZONE = "timezone";
  @SerializedName(SERIALIZED_NAME_TIMEZONE)
  private String timezone;

  public static final String SERIALIZED_NAME_ENABLED = "enabled";
  @SerializedName(SERIALIZED_NAME_ENABLED)
  private Boolean enabled;

  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private String tags;

  public static final String SERIALIZED_NAME_SUCCESS_CALLBACK = "success_callback";
  @SerializedName(SERIALIZED_NAME_SUCCESS_CALLBACK)
  private String successCallback;

  public static final String SERIALIZED_NAME_FAILURE_CALLBACK = "failure_callback";
  @SerializedName(SERIALIZED_NAME_FAILURE_CALLBACK)
  private String failureCallback;


  public JobIn name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * The new name of the job. Must be unique.
   * @return name
  **/
  @ApiModelProperty(required = true, value = "The new name of the job. Must be unique.")

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
  @ApiModelProperty(required = true, value = "The new cron expression for the job.")

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
  @ApiModelProperty(required = true, value = "The command to run when the job fires.")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The timezone to run the job in.")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Is the job enabled by default?")

  public Boolean getEnabled() {
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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "A comma-separated list of tags to associate with this job. You can search jobs by their tags.")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Specify the url to receive a POST callback for all successful runs of this job.")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Specify the url to receive a POST callback for all unsuccessful runs of this job.")

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

