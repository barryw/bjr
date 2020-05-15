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
 * TodaysStats
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-05-15T21:36:07.023Z[GMT]")
public class TodaysStats {
  public static final String SERIALIZED_NAME_TOTAL_JOBS = "total_jobs";
  @SerializedName(SERIALIZED_NAME_TOTAL_JOBS)
  private Integer totalJobs;

  public static final String SERIALIZED_NAME_TOTAL_JOBS_TREND = "total_jobs_trend";
  @SerializedName(SERIALIZED_NAME_TOTAL_JOBS_TREND)
  private Float totalJobsTrend;

  public static final String SERIALIZED_NAME_ENABLED_JOBS = "enabled_jobs";
  @SerializedName(SERIALIZED_NAME_ENABLED_JOBS)
  private Integer enabledJobs;

  public static final String SERIALIZED_NAME_ENABLED_JOBS_TREND = "enabled_jobs_trend";
  @SerializedName(SERIALIZED_NAME_ENABLED_JOBS_TREND)
  private Float enabledJobsTrend;

  public static final String SERIALIZED_NAME_RUN_JOBS = "run_jobs";
  @SerializedName(SERIALIZED_NAME_RUN_JOBS)
  private Integer runJobs;

  public static final String SERIALIZED_NAME_RUN_JOBS_TREND = "run_jobs_trend";
  @SerializedName(SERIALIZED_NAME_RUN_JOBS_TREND)
  private Float runJobsTrend;

  public static final String SERIALIZED_NAME_FAILED_JOBS = "failed_jobs";
  @SerializedName(SERIALIZED_NAME_FAILED_JOBS)
  private Integer failedJobs;

  public static final String SERIALIZED_NAME_FAILED_JOBS_TREND = "failed_jobs_trend";
  @SerializedName(SERIALIZED_NAME_FAILED_JOBS_TREND)
  private Float failedJobsTrend;

  public static final String SERIALIZED_NAME_AVG_JOB_RUNTIME = "avg_job_runtime";
  @SerializedName(SERIALIZED_NAME_AVG_JOB_RUNTIME)
  private Float avgJobRuntime;

  public static final String SERIALIZED_NAME_AVG_JOB_RUNTIME_TREND = "avg_job_runtime_trend";
  @SerializedName(SERIALIZED_NAME_AVG_JOB_RUNTIME_TREND)
  private Float avgJobRuntimeTrend;

  public static final String SERIALIZED_NAME_MAX_JOB_RUNTIME = "max_job_runtime";
  @SerializedName(SERIALIZED_NAME_MAX_JOB_RUNTIME)
  private Float maxJobRuntime;

  public static final String SERIALIZED_NAME_MAX_JOB_RUNTIME_TREND = "max_job_runtime_trend";
  @SerializedName(SERIALIZED_NAME_MAX_JOB_RUNTIME_TREND)
  private Float maxJobRuntimeTrend;

  public static final String SERIALIZED_NAME_MIN_JOB_RUNTIME = "min_job_runtime";
  @SerializedName(SERIALIZED_NAME_MIN_JOB_RUNTIME)
  private Float minJobRuntime;

  public static final String SERIALIZED_NAME_MIN_JOB_RUNTIME_TREND = "min_job_runtime_trend";
  @SerializedName(SERIALIZED_NAME_MIN_JOB_RUNTIME_TREND)
  private Float minJobRuntimeTrend;


  public TodaysStats totalJobs(Integer totalJobs) {
    
    this.totalJobs = totalJobs;
    return this;
  }

   /**
   * The total number of jobs that are scheduled.
   * @return totalJobs
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The total number of jobs that are scheduled.")

  public Integer getTotalJobs() {
    return totalJobs;
  }


  public void setTotalJobs(Integer totalJobs) {
    this.totalJobs = totalJobs;
  }


  public TodaysStats totalJobsTrend(Float totalJobsTrend) {
    
    this.totalJobsTrend = totalJobsTrend;
    return this;
  }

   /**
   * The trend direction of total_jobs.
   * @return totalJobsTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of total_jobs.")

  public Float getTotalJobsTrend() {
    return totalJobsTrend;
  }


  public void setTotalJobsTrend(Float totalJobsTrend) {
    this.totalJobsTrend = totalJobsTrend;
  }


  public TodaysStats enabledJobs(Integer enabledJobs) {
    
    this.enabledJobs = enabledJobs;
    return this;
  }

   /**
   * The total number of jobs that are enabled. This will be a subset of total_jobs.
   * @return enabledJobs
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The total number of jobs that are enabled. This will be a subset of total_jobs.")

  public Integer getEnabledJobs() {
    return enabledJobs;
  }


  public void setEnabledJobs(Integer enabledJobs) {
    this.enabledJobs = enabledJobs;
  }


  public TodaysStats enabledJobsTrend(Float enabledJobsTrend) {
    
    this.enabledJobsTrend = enabledJobsTrend;
    return this;
  }

   /**
   * The trend direction of enabled_jobs.
   * @return enabledJobsTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of enabled_jobs.")

  public Float getEnabledJobsTrend() {
    return enabledJobsTrend;
  }


  public void setEnabledJobsTrend(Float enabledJobsTrend) {
    this.enabledJobsTrend = enabledJobsTrend;
  }


  public TodaysStats runJobs(Integer runJobs) {
    
    this.runJobs = runJobs;
    return this;
  }

   /**
   * The number of jobs that have been run today.
   * @return runJobs
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of jobs that have been run today.")

  public Integer getRunJobs() {
    return runJobs;
  }


  public void setRunJobs(Integer runJobs) {
    this.runJobs = runJobs;
  }


  public TodaysStats runJobsTrend(Float runJobsTrend) {
    
    this.runJobsTrend = runJobsTrend;
    return this;
  }

   /**
   * The trend direction of run_jobs.
   * @return runJobsTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of run_jobs.")

  public Float getRunJobsTrend() {
    return runJobsTrend;
  }


  public void setRunJobsTrend(Float runJobsTrend) {
    this.runJobsTrend = runJobsTrend;
  }


  public TodaysStats failedJobs(Integer failedJobs) {
    
    this.failedJobs = failedJobs;
    return this;
  }

   /**
   * The number of jobs that have failed today.
   * @return failedJobs
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of jobs that have failed today.")

  public Integer getFailedJobs() {
    return failedJobs;
  }


  public void setFailedJobs(Integer failedJobs) {
    this.failedJobs = failedJobs;
  }


  public TodaysStats failedJobsTrend(Float failedJobsTrend) {
    
    this.failedJobsTrend = failedJobsTrend;
    return this;
  }

   /**
   * The trend direction of failed_jobs.
   * @return failedJobsTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of failed_jobs.")

  public Float getFailedJobsTrend() {
    return failedJobsTrend;
  }


  public void setFailedJobsTrend(Float failedJobsTrend) {
    this.failedJobsTrend = failedJobsTrend;
  }


  public TodaysStats avgJobRuntime(Float avgJobRuntime) {
    
    this.avgJobRuntime = avgJobRuntime;
    return this;
  }

   /**
   * The average job run time.
   * @return avgJobRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The average job run time.")

  public Float getAvgJobRuntime() {
    return avgJobRuntime;
  }


  public void setAvgJobRuntime(Float avgJobRuntime) {
    this.avgJobRuntime = avgJobRuntime;
  }


  public TodaysStats avgJobRuntimeTrend(Float avgJobRuntimeTrend) {
    
    this.avgJobRuntimeTrend = avgJobRuntimeTrend;
    return this;
  }

   /**
   * The trend direction of avg_job_runtime.
   * @return avgJobRuntimeTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of avg_job_runtime.")

  public Float getAvgJobRuntimeTrend() {
    return avgJobRuntimeTrend;
  }


  public void setAvgJobRuntimeTrend(Float avgJobRuntimeTrend) {
    this.avgJobRuntimeTrend = avgJobRuntimeTrend;
  }


  public TodaysStats maxJobRuntime(Float maxJobRuntime) {
    
    this.maxJobRuntime = maxJobRuntime;
    return this;
  }

   /**
   * The max job run time.
   * @return maxJobRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The max job run time.")

  public Float getMaxJobRuntime() {
    return maxJobRuntime;
  }


  public void setMaxJobRuntime(Float maxJobRuntime) {
    this.maxJobRuntime = maxJobRuntime;
  }


  public TodaysStats maxJobRuntimeTrend(Float maxJobRuntimeTrend) {
    
    this.maxJobRuntimeTrend = maxJobRuntimeTrend;
    return this;
  }

   /**
   * The trend direction of max_job_runtime.
   * @return maxJobRuntimeTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of max_job_runtime.")

  public Float getMaxJobRuntimeTrend() {
    return maxJobRuntimeTrend;
  }


  public void setMaxJobRuntimeTrend(Float maxJobRuntimeTrend) {
    this.maxJobRuntimeTrend = maxJobRuntimeTrend;
  }


  public TodaysStats minJobRuntime(Float minJobRuntime) {
    
    this.minJobRuntime = minJobRuntime;
    return this;
  }

   /**
   * The min job run time.
   * @return minJobRuntime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The min job run time.")

  public Float getMinJobRuntime() {
    return minJobRuntime;
  }


  public void setMinJobRuntime(Float minJobRuntime) {
    this.minJobRuntime = minJobRuntime;
  }


  public TodaysStats minJobRuntimeTrend(Float minJobRuntimeTrend) {
    
    this.minJobRuntimeTrend = minJobRuntimeTrend;
    return this;
  }

   /**
   * The trend direction of min_job_runtime.
   * @return minJobRuntimeTrend
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The trend direction of min_job_runtime.")

  public Float getMinJobRuntimeTrend() {
    return minJobRuntimeTrend;
  }


  public void setMinJobRuntimeTrend(Float minJobRuntimeTrend) {
    this.minJobRuntimeTrend = minJobRuntimeTrend;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TodaysStats todaysStats = (TodaysStats) o;
    return Objects.equals(this.totalJobs, todaysStats.totalJobs) &&
        Objects.equals(this.totalJobsTrend, todaysStats.totalJobsTrend) &&
        Objects.equals(this.enabledJobs, todaysStats.enabledJobs) &&
        Objects.equals(this.enabledJobsTrend, todaysStats.enabledJobsTrend) &&
        Objects.equals(this.runJobs, todaysStats.runJobs) &&
        Objects.equals(this.runJobsTrend, todaysStats.runJobsTrend) &&
        Objects.equals(this.failedJobs, todaysStats.failedJobs) &&
        Objects.equals(this.failedJobsTrend, todaysStats.failedJobsTrend) &&
        Objects.equals(this.avgJobRuntime, todaysStats.avgJobRuntime) &&
        Objects.equals(this.avgJobRuntimeTrend, todaysStats.avgJobRuntimeTrend) &&
        Objects.equals(this.maxJobRuntime, todaysStats.maxJobRuntime) &&
        Objects.equals(this.maxJobRuntimeTrend, todaysStats.maxJobRuntimeTrend) &&
        Objects.equals(this.minJobRuntime, todaysStats.minJobRuntime) &&
        Objects.equals(this.minJobRuntimeTrend, todaysStats.minJobRuntimeTrend);
  }

  @Override
  public int hashCode() {
    return Objects.hash(totalJobs, totalJobsTrend, enabledJobs, enabledJobsTrend, runJobs, runJobsTrend, failedJobs, failedJobsTrend, avgJobRuntime, avgJobRuntimeTrend, maxJobRuntime, maxJobRuntimeTrend, minJobRuntime, minJobRuntimeTrend);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TodaysStats {\n");
    sb.append("    totalJobs: ").append(toIndentedString(totalJobs)).append("\n");
    sb.append("    totalJobsTrend: ").append(toIndentedString(totalJobsTrend)).append("\n");
    sb.append("    enabledJobs: ").append(toIndentedString(enabledJobs)).append("\n");
    sb.append("    enabledJobsTrend: ").append(toIndentedString(enabledJobsTrend)).append("\n");
    sb.append("    runJobs: ").append(toIndentedString(runJobs)).append("\n");
    sb.append("    runJobsTrend: ").append(toIndentedString(runJobsTrend)).append("\n");
    sb.append("    failedJobs: ").append(toIndentedString(failedJobs)).append("\n");
    sb.append("    failedJobsTrend: ").append(toIndentedString(failedJobsTrend)).append("\n");
    sb.append("    avgJobRuntime: ").append(toIndentedString(avgJobRuntime)).append("\n");
    sb.append("    avgJobRuntimeTrend: ").append(toIndentedString(avgJobRuntimeTrend)).append("\n");
    sb.append("    maxJobRuntime: ").append(toIndentedString(maxJobRuntime)).append("\n");
    sb.append("    maxJobRuntimeTrend: ").append(toIndentedString(maxJobRuntimeTrend)).append("\n");
    sb.append("    minJobRuntime: ").append(toIndentedString(minJobRuntime)).append("\n");
    sb.append("    minJobRuntimeTrend: ").append(toIndentedString(minJobRuntimeTrend)).append("\n");
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

