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


package io.barrywalker.bjr.api;

import io.barrywalker.bjr.ApiException;
import io.barrywalker.bjr.model.JobsPerDay;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for JobServerApi
 */
@Ignore
public class JobServerApiTest {

    private final JobServerApi api = new JobServerApi();

    
    /**
     * Jobs Per Day
     *
     * The number of jobs processed and failed by day
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void jobsPerDayTest() throws ApiException {
        Integer days = null;
        JobsPerDay response = api.jobsPerDay(days);

        // TODO: test validations
    }
    
}
