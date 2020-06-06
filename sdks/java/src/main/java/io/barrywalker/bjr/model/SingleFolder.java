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
 * SingleFolder
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-06-06T23:10:31.977Z[GMT]")
public class SingleFolder {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_EXPRESSION = "expression";
  @SerializedName(SERIALIZED_NAME_EXPRESSION)
  private String expression;

  public static final String SERIALIZED_NAME_JOB_COUNT = "job_count";
  @SerializedName(SERIALIZED_NAME_JOB_COUNT)
  private Integer jobCount;


  public SingleFolder id(Integer id) {
    
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


  public SingleFolder name(String name) {
    
    this.name = name;
    return this;
  }

   /**
   * The folder&#39;s name. Must be unique.
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The folder's name. Must be unique.")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  public SingleFolder expression(String expression) {
    
    this.expression = expression;
    return this;
  }

   /**
   * The search expression used to determine which jobs appear in this folder.
   * @return expression
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The search expression used to determine which jobs appear in this folder.")

  public String getExpression() {
    return expression;
  }


  public void setExpression(String expression) {
    this.expression = expression;
  }


  public SingleFolder jobCount(Integer jobCount) {
    
    this.jobCount = jobCount;
    return this;
  }

   /**
   * The number of jobs that match the folder&#39;s expression.
   * @return jobCount
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "The number of jobs that match the folder's expression.")

  public Integer getJobCount() {
    return jobCount;
  }


  public void setJobCount(Integer jobCount) {
    this.jobCount = jobCount;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SingleFolder singleFolder = (SingleFolder) o;
    return Objects.equals(this.id, singleFolder.id) &&
        Objects.equals(this.name, singleFolder.name) &&
        Objects.equals(this.expression, singleFolder.expression) &&
        Objects.equals(this.jobCount, singleFolder.jobCount);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, expression, jobCount);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SingleFolder {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    expression: ").append(toIndentedString(expression)).append("\n");
    sb.append("    jobCount: ").append(toIndentedString(jobCount)).append("\n");
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

