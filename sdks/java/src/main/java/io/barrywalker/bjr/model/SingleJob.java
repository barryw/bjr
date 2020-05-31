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
import java.util.ArrayList;
import java.util.List;
import org.threeten.bp.OffsetDateTime;

/**
 * SingleJob
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-31T12:57:44.444Z[GMT]")
public class SingleJob {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_CRON = "cron";
  @SerializedName(SERIALIZED_NAME_CRON)
  private String cron;

  public static final String SERIALIZED_NAME_ENABLED = "enabled";
  @SerializedName(SERIALIZED_NAME_ENABLED)
  private Boolean enabled;

  public static final String SERIALIZED_NAME_COMMAND = "command";
  @SerializedName(SERIALIZED_NAME_COMMAND)
  private String command;

  public static final String SERIALIZED_NAME_LAST_RUN = "last_run";
  @SerializedName(SERIALIZED_NAME_LAST_RUN)
  private String lastRun;

  public static final String SERIALIZED_NAME_NEXT_RUN = "next_run";
  @SerializedName(SERIALIZED_NAME_NEXT_RUN)
  private OffsetDateTime nextRun;

  public static final String SERIALIZED_NAME_SUCCESS = "success";
  @SerializedName(SERIALIZED_NAME_SUCCESS)
  private Boolean success;

  public static final String SERIALIZED_NAME_RUNNING = "running";
  @SerializedName(SERIALIZED_NAME_RUNNING)
  private Boolean running;

  public static final String SERIALIZED_NAME_TIMEZONE = "timezone";
  @SerializedName(SERIALIZED_NAME_TIMEZONE)
  private String timezone;

  public static final String SERIALIZED_NAME_TAGS = "tags";
  @SerializedName(SERIALIZED_NAME_TAGS)
  private List<String> tags = null;

  public static final String SERIALIZED_NAME_CREATED_AT = "created_at";
  @SerializedName(SERIALIZED_NAME_CREATED_AT)
  private OffsetDateTime createdAt;

  public static final String SERIALIZED_NAME_UPDATED_AT = "updated_at";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT)
  private OffsetDateTime updatedAt;

  public static final String SERIALIZED_NAME_SUCCESS_CALLBACK = "success_callback";
  @SerializedName(SERIALIZED_NAME_SUCCESS_CALLBACK)
  private String successCallback;

  public static final String SERIALIZED_NAME_FAILURE_CALLBACK = "failure_callback";
  @SerializedName(SERIALIZED_NAME_FAILURE_CALLBACK)
  private String failureCallback;


  public SingleJob id(Integer id) {
    
    this.id = id;
    return this;
  }

   /**
   * The object&#39;s primary key. This uniquely identifies the object in the system.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The object's primary key. This uniquely identifies the object in the system.")

  public Integer getId() {
    return id;
  }


  public void setId(Integer id) {
    this.id = id;
  }


  public SingleJob name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * The name of the job.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The name of the job.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public SingleJob cron(String cron) {
    
    this.cron = cron;
    return this;
  }

   /**
   * The cron expression for the job.
   * @return cron
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The cron expression for the job.")

  public String getCron() {
    return cron;
  }


  public void setCron(String cron) {
    this.cron = cron;
  }


  public SingleJob enabled(Boolean enabled) {
    
    this.enabled = enabled;
    return this;
  }

   /**
   * Whether the job is enabled or not.
   * @return enabled
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Whether the job is enabled or not.")

  public Boolean getEnabled() {
    return enabled;
  }


  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }


  public SingleJob command(String command) {
    
    this.command = command;
    return this;
  }

   /**
   * The command that is executed when the job fires.
   * @return command
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The command that is executed when the job fires.")

  public String getCommand() {
    return command;
  }


  public void setCommand(String command) {
    this.command = command;
  }


  public SingleJob lastRun(String lastRun) {
    
    this.lastRun = lastRun;
    return this;
  }

   /**
   * The last time the job ran.
   * @return lastRun
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The last time the job ran.")

  public String getLastRun() {
    return lastRun;
  }


  public void setLastRun(String lastRun) {
    this.lastRun = lastRun;
  }


  public SingleJob nextRun(OffsetDateTime nextRun) {
    
    this.nextRun = nextRun;
    return this;
  }

   /**
   * The date and time of the job&#39;s next run.
   * @return nextRun
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The date and time of the job's next run.")

  public OffsetDateTime getNextRun() {
    return nextRun;
  }


  public void setNextRun(OffsetDateTime nextRun) {
    this.nextRun = nextRun;
  }


  public SingleJob success(Boolean success) {
    
    this.success = success;
    return this;
  }

   /**
   * Whether the last run of the job was successful.
   * @return success
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Whether the last run of the job was successful.")

  public Boolean getSuccess() {
    return success;
  }


  public void setSuccess(Boolean success) {
    this.success = success;
  }


  public SingleJob running(Boolean running) {
    
    this.running = running;
    return this;
  }

   /**
   * Whether the job is currently running.
   * @return running
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Whether the job is currently running.")

  public Boolean getRunning() {
    return running;
  }


  public void setRunning(Boolean running) {
    this.running = running;
  }


  public SingleJob timezone(String timezone) {
    
    this.timezone = timezone;
    return this;
  }

   /**
   * The timezone that the job will run in.
   * @return timezone
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The timezone that the job will run in.")

  public String getTimezone() {
    return timezone;
  }


  public void setTimezone(String timezone) {
    this.timezone = timezone;
  }


  public SingleJob tags(List<String> tags) {
    
    this.tags = tags;
    return this;
  }

  public SingleJob addTagsItem(String tagsItem) {
    if (this.tags == null) {
      this.tags = new ArrayList<String>();
    }
    this.tags.add(tagsItem);
    return this;
  }

   /**
   * An array of tags associated with the job.
   * @return tags
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "An array of tags associated with the job.")

  public List<String> getTags() {
    return tags;
  }


  public void setTags(List<String> tags) {
    this.tags = tags;
  }


  public SingleJob createdAt(OffsetDateTime createdAt) {
    
    this.createdAt = createdAt;
    return this;
  }

   /**
   * The UTC date and time that the object was created.
   * @return createdAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The UTC date and time that the object was created.")

  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }


  public void setCreatedAt(OffsetDateTime createdAt) {
    this.createdAt = createdAt;
  }


  public SingleJob updatedAt(OffsetDateTime updatedAt) {
    
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * The UTC date and time that the object was last modified.
   * @return updatedAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The UTC date and time that the object was last modified.")

  public OffsetDateTime getUpdatedAt() {
    return updatedAt;
  }


  public void setUpdatedAt(OffsetDateTime updatedAt) {
    this.updatedAt = updatedAt;
  }


  public SingleJob successCallback(String successCallback) {
    
    this.successCallback = successCallback;
    return this;
  }

   /**
   * This url will receive a POST request with details about all successful job runs.
   * @return successCallback
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "This url will receive a POST request with details about all successful job runs.")

  public String getSuccessCallback() {
    return successCallback;
  }


  public void setSuccessCallback(String successCallback) {
    this.successCallback = successCallback;
  }


  public SingleJob failureCallback(String failureCallback) {
    
    this.failureCallback = failureCallback;
    return this;
  }

   /**
   * This url will receive a POST request with details about all unsuccessful job runs.
   * @return failureCallback
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "This url will receive a POST request with details about all unsuccessful job runs.")

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
    SingleJob singleJob = (SingleJob) o;
    return Objects.equals(this.id, singleJob.id) &&
        Objects.equals(this.name, singleJob.name) &&
        Objects.equals(this.cron, singleJob.cron) &&
        Objects.equals(this.enabled, singleJob.enabled) &&
        Objects.equals(this.command, singleJob.command) &&
        Objects.equals(this.lastRun, singleJob.lastRun) &&
        Objects.equals(this.nextRun, singleJob.nextRun) &&
        Objects.equals(this.success, singleJob.success) &&
        Objects.equals(this.running, singleJob.running) &&
        Objects.equals(this.timezone, singleJob.timezone) &&
        Objects.equals(this.tags, singleJob.tags) &&
        Objects.equals(this.createdAt, singleJob.createdAt) &&
        Objects.equals(this.updatedAt, singleJob.updatedAt) &&
        Objects.equals(this.successCallback, singleJob.successCallback) &&
        Objects.equals(this.failureCallback, singleJob.failureCallback);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, cron, enabled, command, lastRun, nextRun, success, running, timezone, tags, createdAt, updatedAt, successCallback, failureCallback);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SingleJob {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    cron: ").append(toIndentedString(cron)).append("\n");
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    command: ").append(toIndentedString(command)).append("\n");
    sb.append("    lastRun: ").append(toIndentedString(lastRun)).append("\n");
    sb.append("    nextRun: ").append(toIndentedString(nextRun)).append("\n");
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    running: ").append(toIndentedString(running)).append("\n");
    sb.append("    timezone: ").append(toIndentedString(timezone)).append("\n");
    sb.append("    tags: ").append(toIndentedString(tags)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
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

