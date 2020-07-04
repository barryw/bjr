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
 * BusyThreadCountMessageObjectHosts
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-07-04T19:52:50.498Z[GMT]")
public class BusyThreadCountMessageObjectHosts {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_BUSY = "busy";
  @SerializedName(SERIALIZED_NAME_BUSY)
  private Integer busy;

  public static final String SERIALIZED_NAME_PID = "pid";
  @SerializedName(SERIALIZED_NAME_PID)
  private Integer pid;


  public BusyThreadCountMessageObjectHosts name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * The name of the worker host.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The name of the worker host.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public BusyThreadCountMessageObjectHosts busy(Integer busy) {
    
    this.busy = busy;
    return this;
  }

   /**
   * The number of busy threads on the worker.
   * @return busy
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of busy threads on the worker.")

  public Integer getBusy() {
    return busy;
  }


  public void setBusy(Integer busy) {
    this.busy = busy;
  }


  public BusyThreadCountMessageObjectHosts pid(Integer pid) {
    
    this.pid = pid;
    return this;
  }

   /**
   * The process ID of the worker process.
   * @return pid
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The process ID of the worker process.")

  public Integer getPid() {
    return pid;
  }


  public void setPid(Integer pid) {
    this.pid = pid;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BusyThreadCountMessageObjectHosts busyThreadCountMessageObjectHosts = (BusyThreadCountMessageObjectHosts) o;
    return Objects.equals(this.name, busyThreadCountMessageObjectHosts.name) &&
        Objects.equals(this.busy, busyThreadCountMessageObjectHosts.busy) &&
        Objects.equals(this.pid, busyThreadCountMessageObjectHosts.pid);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, busy, pid);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BusyThreadCountMessageObjectHosts {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    busy: ").append(toIndentedString(busy)).append("\n");
    sb.append("    pid: ").append(toIndentedString(pid)).append("\n");
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

