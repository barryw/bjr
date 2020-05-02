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
import org.threeten.bp.OffsetDateTime;

/**
 * JobStat
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-02T18:52:12.981Z[GMT]")
public class JobStat {
  public static final String SERIALIZED_NAME_RUNS = "runs";
  @SerializedName(SERIALIZED_NAME_RUNS)
  private Integer runs;

  public static final String SERIALIZED_NAME_FAILED = "failed";
  @SerializedName(SERIALIZED_NAME_FAILED)
  private Integer failed;

  public static final String SERIALIZED_NAME_AVG_RUNTIME = "avg_runtime";
  @SerializedName(SERIALIZED_NAME_AVG_RUNTIME)
  private Integer avgRuntime;

  public static final String SERIALIZED_NAME_MAX_RUNTIME = "max_runtime";
  @SerializedName(SERIALIZED_NAME_MAX_RUNTIME)
  private Integer maxRuntime;

  public static final String SERIALIZED_NAME_MIN_RUNTIME = "min_runtime";
  @SerializedName(SERIALIZED_NAME_MIN_RUNTIME)
  private Integer minRuntime;

  public static final String SERIALIZED_NAME_PERIOD = "period";
  @SerializedName(SERIALIZED_NAME_PERIOD)
  private String period;

  public static final String SERIALIZED_NAME_START_DT = "start_dt";
  @SerializedName(SERIALIZED_NAME_START_DT)
  private OffsetDateTime startDt;

  public static final String SERIALIZED_NAME_END_DT = "end_dt";
  @SerializedName(SERIALIZED_NAME_END_DT)
  private OffsetDateTime endDt;

  public static final String SERIALIZED_NAME_CREATED_AT = "created_at";
  @SerializedName(SERIALIZED_NAME_CREATED_AT)
  private OffsetDateTime createdAt;

  public static final String SERIALIZED_NAME_UPDATED_AT = "updated_at";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT)
  private OffsetDateTime updatedAt;


  public JobStat runs(Integer runs) {
    
    this.runs = runs;
    return this;
  }

   /**
   * The number of job runs in the period.
   * @return runs
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of job runs in the period.")

  public Integer getRuns() {
    return runs;
  }


  public void setRuns(Integer runs) {
    this.runs = runs;
  }


  public JobStat failed(Integer failed) {
    
    this.failed = failed;
    return this;
  }

   /**
   * The number of job runs that failed in the period.
   * @return failed
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of job runs that failed in the period.")

  public Integer getFailed() {
    return failed;
  }


  public void setFailed(Integer failed) {
    this.failed = failed;
  }


  public JobStat avgRuntime(Integer avgRuntime) {
    
    this.avgRuntime = avgRuntime;
    return this;
  }

   /**
   * The average runtime in seconds of all jobs in the period.
   * @return avgRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The average runtime in seconds of all jobs in the period.")

  public Integer getAvgRuntime() {
    return avgRuntime;
  }


  public void setAvgRuntime(Integer avgRuntime) {
    this.avgRuntime = avgRuntime;
  }


  public JobStat maxRuntime(Integer maxRuntime) {
    
    this.maxRuntime = maxRuntime;
    return this;
  }

   /**
   * The max runtime in seconds of all jobs in the period.
   * @return maxRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The max runtime in seconds of all jobs in the period.")

  public Integer getMaxRuntime() {
    return maxRuntime;
  }


  public void setMaxRuntime(Integer maxRuntime) {
    this.maxRuntime = maxRuntime;
  }


  public JobStat minRuntime(Integer minRuntime) {
    
    this.minRuntime = minRuntime;
    return this;
  }

   /**
   * The min runtime in seconds of all jobs in the period.
   * @return minRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The min runtime in seconds of all jobs in the period.")

  public Integer getMinRuntime() {
    return minRuntime;
  }


  public void setMinRuntime(Integer minRuntime) {
    this.minRuntime = minRuntime;
  }


  public JobStat period(String period) {
    
    this.period = period;
    return this;
  }

   /**
   * The runtime period.
   * @return period
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The runtime period.")

  public String getPeriod() {
    return period;
  }


  public void setPeriod(String period) {
    this.period = period;
  }


  public JobStat startDt(OffsetDateTime startDt) {
    
    this.startDt = startDt;
    return this;
  }

   /**
   * The period start date.
   * @return startDt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The period start date.")

  public OffsetDateTime getStartDt() {
    return startDt;
  }


  public void setStartDt(OffsetDateTime startDt) {
    this.startDt = startDt;
  }


  public JobStat endDt(OffsetDateTime endDt) {
    
    this.endDt = endDt;
    return this;
  }

   /**
   * The period end date.
   * @return endDt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The period end date.")

  public OffsetDateTime getEndDt() {
    return endDt;
  }


  public void setEndDt(OffsetDateTime endDt) {
    this.endDt = endDt;
  }


  public JobStat createdAt(OffsetDateTime createdAt) {
    
    this.createdAt = createdAt;
    return this;
  }

   /**
   * The date the record was created.
   * @return createdAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The date the record was created.")

  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }


  public void setCreatedAt(OffsetDateTime createdAt) {
    this.createdAt = createdAt;
  }


  public JobStat updatedAt(OffsetDateTime updatedAt) {
    
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * The date the record was last updated.
   * @return updatedAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The date the record was last updated.")

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
    JobStat jobStat = (JobStat) o;
    return Objects.equals(this.runs, jobStat.runs) &&
        Objects.equals(this.failed, jobStat.failed) &&
        Objects.equals(this.avgRuntime, jobStat.avgRuntime) &&
        Objects.equals(this.maxRuntime, jobStat.maxRuntime) &&
        Objects.equals(this.minRuntime, jobStat.minRuntime) &&
        Objects.equals(this.period, jobStat.period) &&
        Objects.equals(this.startDt, jobStat.startDt) &&
        Objects.equals(this.endDt, jobStat.endDt) &&
        Objects.equals(this.createdAt, jobStat.createdAt) &&
        Objects.equals(this.updatedAt, jobStat.updatedAt);
  }

  @Override
  public int hashCode() {
    return Objects.hash(runs, failed, avgRuntime, maxRuntime, minRuntime, period, startDt, endDt, createdAt, updatedAt);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class JobStat {\n");
    sb.append("    runs: ").append(toIndentedString(runs)).append("\n");
    sb.append("    failed: ").append(toIndentedString(failed)).append("\n");
    sb.append("    avgRuntime: ").append(toIndentedString(avgRuntime)).append("\n");
    sb.append("    maxRuntime: ").append(toIndentedString(maxRuntime)).append("\n");
    sb.append("    minRuntime: ").append(toIndentedString(minRuntime)).append("\n");
    sb.append("    period: ").append(toIndentedString(period)).append("\n");
    sb.append("    startDt: ").append(toIndentedString(startDt)).append("\n");
    sb.append("    endDt: ").append(toIndentedString(endDt)).append("\n");
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
