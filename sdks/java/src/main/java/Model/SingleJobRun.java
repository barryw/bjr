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
import org.threeten.bp.OffsetDateTime;
/**
 * SingleJobRun
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2020-04-16T22:29:09.928-04:00[America/New_York]")
public class SingleJobRun {
  @SerializedName("id")
  private Integer id = null;

  @SerializedName("success")
  private Boolean success = null;

  @SerializedName("return_code")
  private Integer returnCode = null;

  @SerializedName("error_message")
  private String errorMessage = null;

  @SerializedName("stdout")
  private String stdout = null;

  @SerializedName("stderr")
  private String stderr = null;

  @SerializedName("start_time")
  private OffsetDateTime startTime = null;

  @SerializedName("end_time")
  private OffsetDateTime endTime = null;

  @SerializedName("job_id")
  private Integer jobId = null;

  @SerializedName("created_at")
  private OffsetDateTime createdAt = null;

  @SerializedName("updated_at")
  private OffsetDateTime updatedAt = null;

  public SingleJobRun id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * The object&#x27;s primary key. This uniquely identifies the object in the system.
   * @return id
  **/
  @Schema(description = "The object's primary key. This uniquely identifies the object in the system.")
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public SingleJobRun success(Boolean success) {
    this.success = success;
    return this;
  }

   /**
   * Whether the run was successful or not.
   * @return success
  **/
  @Schema(description = "Whether the run was successful or not.")
  public Boolean isSuccess() {
    return success;
  }

  public void setSuccess(Boolean success) {
    this.success = success;
  }

  public SingleJobRun returnCode(Integer returnCode) {
    this.returnCode = returnCode;
    return this;
  }

   /**
   * The return code that the command exited with. 0 means success.
   * @return returnCode
  **/
  @Schema(description = "The return code that the command exited with. 0 means success.")
  public Integer getReturnCode() {
    return returnCode;
  }

  public void setReturnCode(Integer returnCode) {
    this.returnCode = returnCode;
  }

  public SingleJobRun errorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
    return this;
  }

   /**
   * If the run failed, the error message that was returned.
   * @return errorMessage
  **/
  @Schema(description = "If the run failed, the error message that was returned.")
  public String getErrorMessage() {
    return errorMessage;
  }

  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }

  public SingleJobRun stdout(String stdout) {
    this.stdout = stdout;
    return this;
  }

   /**
   * The text written to STDOUT as part of the job.
   * @return stdout
  **/
  @Schema(description = "The text written to STDOUT as part of the job.")
  public String getStdout() {
    return stdout;
  }

  public void setStdout(String stdout) {
    this.stdout = stdout;
  }

  public SingleJobRun stderr(String stderr) {
    this.stderr = stderr;
    return this;
  }

   /**
   * The text written to STDERR as part of the job.
   * @return stderr
  **/
  @Schema(description = "The text written to STDERR as part of the job.")
  public String getStderr() {
    return stderr;
  }

  public void setStderr(String stderr) {
    this.stderr = stderr;
  }

  public SingleJobRun startTime(OffsetDateTime startTime) {
    this.startTime = startTime;
    return this;
  }

   /**
   * The date and time that the run started.
   * @return startTime
  **/
  @Schema(description = "The date and time that the run started.")
  public OffsetDateTime getStartTime() {
    return startTime;
  }

  public void setStartTime(OffsetDateTime startTime) {
    this.startTime = startTime;
  }

  public SingleJobRun endTime(OffsetDateTime endTime) {
    this.endTime = endTime;
    return this;
  }

   /**
   * The date and time that the run ended.
   * @return endTime
  **/
  @Schema(description = "The date and time that the run ended.")
  public OffsetDateTime getEndTime() {
    return endTime;
  }

  public void setEndTime(OffsetDateTime endTime) {
    this.endTime = endTime;
  }

  public SingleJobRun jobId(Integer jobId) {
    this.jobId = jobId;
    return this;
  }

   /**
   * The job that the run is associated with.
   * @return jobId
  **/
  @Schema(description = "The job that the run is associated with.")
  public Integer getJobId() {
    return jobId;
  }

  public void setJobId(Integer jobId) {
    this.jobId = jobId;
  }

  public SingleJobRun createdAt(OffsetDateTime createdAt) {
    this.createdAt = createdAt;
    return this;
  }

   /**
   * The date and time that the run record was created in UTC.
   * @return createdAt
  **/
  @Schema(description = "The date and time that the run record was created in UTC.")
  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(OffsetDateTime createdAt) {
    this.createdAt = createdAt;
  }

  public SingleJobRun updatedAt(OffsetDateTime updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * The date and time that the run record was last updated in UTC.
   * @return updatedAt
  **/
  @Schema(description = "The date and time that the run record was last updated in UTC.")
  public OffsetDateTime getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(OffsetDateTime updatedAt) {
    this.updatedAt = updatedAt;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SingleJobRun singleJobRun = (SingleJobRun) o;
    return Objects.equals(this.id, singleJobRun.id) &&
        Objects.equals(this.success, singleJobRun.success) &&
        Objects.equals(this.returnCode, singleJobRun.returnCode) &&
        Objects.equals(this.errorMessage, singleJobRun.errorMessage) &&
        Objects.equals(this.stdout, singleJobRun.stdout) &&
        Objects.equals(this.stderr, singleJobRun.stderr) &&
        Objects.equals(this.startTime, singleJobRun.startTime) &&
        Objects.equals(this.endTime, singleJobRun.endTime) &&
        Objects.equals(this.jobId, singleJobRun.jobId) &&
        Objects.equals(this.createdAt, singleJobRun.createdAt) &&
        Objects.equals(this.updatedAt, singleJobRun.updatedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, success, returnCode, errorMessage, stdout, stderr, startTime, endTime, jobId, createdAt, updatedAt);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SingleJobRun {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    success: ").append(toIndentedString(success)).append("\n");
    sb.append("    returnCode: ").append(toIndentedString(returnCode)).append("\n");
    sb.append("    errorMessage: ").append(toIndentedString(errorMessage)).append("\n");
    sb.append("    stdout: ").append(toIndentedString(stdout)).append("\n");
    sb.append("    stderr: ").append(toIndentedString(stderr)).append("\n");
    sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
    sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
    sb.append("    jobId: ").append(toIndentedString(jobId)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
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