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
import io.barrywalker.bjr.model.JobArrayMessage;
import io.barrywalker.bjr.model.JobStatMessage;
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
     * List of recent jobs
     *
     * Get a list of the most recently run jobs
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void recentJobsTest() throws ApiException {
        Integer count = null;
        JobArrayMessage response = api.recentJobs(count);

        // TODO: test validations
    }
    
    /**
     * Job statistics by day
     *
     * Get daily job statistics
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void statsByDayTest() throws ApiException {
        String startDate = null;
        String endDate = null;
        Integer perPage = null;
        Integer page = null;
        JobStatMessage response = api.statsByDay(startDate, endDate, perPage, page);

        // TODO: test validations
    }
    
    /**
     * Job statistics by hour
     *
     * Get hourly job statistics for the day
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void statsByHourTest() throws ApiException {
        String startDate = null;
        String endDate = null;
        Integer perPage = null;
        Integer page = null;
        JobStatMessage response = api.statsByHour(startDate, endDate, perPage, page);

        // TODO: test validations
    }
    
    /**
     * Job statistics by minute
     *
     * Get minutely job statistics
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void statsByMinuteTest() throws ApiException {
        String startDate = null;
        String endDate = null;
        Integer perPage = null;
        Integer page = null;
        JobStatMessage response = api.statsByMinute(startDate, endDate, perPage, page);

        // TODO: test validations
    }
    
    /**
     * Job statistics by week
     *
     * Get weekly job statistics
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void statsByWeekTest() throws ApiException {
        String startDate = null;
        String endDate = null;
        Integer perPage = null;
        Integer page = null;
        JobStatMessage response = api.statsByWeek(startDate, endDate, perPage, page);

        // TODO: test validations
    }
    
    /**
     * List of upcoming jobs
     *
     * A list of jobs that are about to execute
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void upcomingJobsTest() throws ApiException {
        Integer count = null;
        JobArrayMessage response = api.upcomingJobs(count);

        // TODO: test validations
    }
    
}
