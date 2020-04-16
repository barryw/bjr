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
import Model.SingleUser;
import Model.UserArray;
import Model.UserNewIn;
import Model.UserOut;
import Model.UserUpdateIn;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for UsersApi
 */
@Ignore
public class UsersApiTest {

    private final UsersApi api = new UsersApi();

    /**
     * Creates a user
     *
     * Create a new user
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createUserTest() throws ApiException {
        UserNewIn body = null;
        UserOut response = api.createUser(body);

        // TODO: test validations
    }
    /**
     * Deletes a user
     *
     * Deletes a user
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteUserTest() throws ApiException {
        Integer id = null;
        UserOut response = api.deleteUser(id);

        // TODO: test validations
    }
    /**
     * Retrieve a single user
     *
     * Retrieve a single user
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getUserTest() throws ApiException {
        Integer id = null;
        SingleUser response = api.getUser(id);

        // TODO: test validations
    }
    /**
     * Retrieves users
     *
     * Get a list of users
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getUsersTest() throws ApiException {
        UserArray response = api.getUsers();

        // TODO: test validations
    }
    /**
     * Update a single user
     *
     * Update a single user
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateUserTest() throws ApiException {
        Integer id = null;
        UserUpdateIn body = null;
        UserOut response = api.updateUser(id, body);

        // TODO: test validations
    }
}