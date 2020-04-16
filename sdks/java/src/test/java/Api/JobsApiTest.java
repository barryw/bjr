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

package Api;

import BJR.ApiException;
import Model.JobArray;
import Model.JobIn;
import Model.JobOut;
import Model.SingleJob;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for JobsApi
 */
@Ignore
public class JobsApiTest {

    private final JobsApi api = new JobsApi();

    /**
     * Creates a job
     *
     * Creates a job
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createJobTest() throws ApiException {
        JobIn body = null;
        JobOut response = api.createJob(body);

        // TODO: test validations
    }
    /**
     * Deletes a job
     *
     * Deletes a job
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteJobTest() throws ApiException {
        Integer id = null;
        api.deleteJob(id);

        // TODO: test validations
    }
    /**
     * Retrieves a single job
     *
     * Retrieves a single job
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getJobTest() throws ApiException {
        Integer id = null;
        SingleJob response = api.getJob(id);

        // TODO: test validations
    }
    /**
     * Retrieves jobs
     *
     * Retrieves jobs
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getJobsTest() throws ApiException {
        String tags = null;
        String incexc = null;
        String startDate = null;
        String endDate = null;
        JobArray response = api.getJobs(tags, incexc, startDate, endDate);

        // TODO: test validations
    }
    /**
     * Updates a single job
     *
     * Updates a single job
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateJobTest() throws ApiException {
        Integer id = null;
        JobIn body = null;
        JobOut response = api.updateJob(id, body);

        // TODO: test validations
    }
}