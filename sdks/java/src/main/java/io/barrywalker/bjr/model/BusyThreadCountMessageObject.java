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
import io.barrywalker.bjr.model.BusyThreadCountMessageObjectHosts;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * BusyThreadCountMessageObject
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-06-06T23:10:31.977Z[GMT]")
public class BusyThreadCountMessageObject {
  public static final String SERIALIZED_NAME_TOTAL_BUSY = "total_busy";
  @SerializedName(SERIALIZED_NAME_TOTAL_BUSY)
  private Integer totalBusy;

  public static final String SERIALIZED_NAME_HOSTS = "hosts";
  @SerializedName(SERIALIZED_NAME_HOSTS)
  private List<BusyThreadCountMessageObjectHosts> hosts = null;


  public BusyThreadCountMessageObject totalBusy(Integer totalBusy) {
    
    this.totalBusy = totalBusy;
    return this;
  }

   /**
   * The total number of busy workers across all pods/hosts.
   * @return totalBusy
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The total number of busy workers across all pods/hosts.")

  public Integer getTotalBusy() {
    return totalBusy;
  }


  public void setTotalBusy(Integer totalBusy) {
    this.totalBusy = totalBusy;
  }


  public BusyThreadCountMessageObject hosts(List<BusyThreadCountMessageObjectHosts> hosts) {
    
    this.hosts = hosts;
    return this;
  }

  public BusyThreadCountMessageObject addHostsItem(BusyThreadCountMessageObjectHosts hostsItem) {
    if (this.hosts == null) {
      this.hosts = new ArrayList<BusyThreadCountMessageObjectHosts>();
    }
    this.hosts.add(hostsItem);
    return this;
  }

   /**
   * Get hosts
   * @return hosts
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public List<BusyThreadCountMessageObjectHosts> getHosts() {
    return hosts;
  }


  public void setHosts(List<BusyThreadCountMessageObjectHosts> hosts) {
    this.hosts = hosts;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BusyThreadCountMessageObject busyThreadCountMessageObject = (BusyThreadCountMessageObject) o;
    return Objects.equals(this.totalBusy, busyThreadCountMessageObject.totalBusy) &&
        Objects.equals(this.hosts, busyThreadCountMessageObject.hosts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(totalBusy, hosts);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BusyThreadCountMessageObject {\n");
    sb.append("    totalBusy: ").append(toIndentedString(totalBusy)).append("\n");
    sb.append("    hosts: ").append(toIndentedString(hosts)).append("\n");
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

