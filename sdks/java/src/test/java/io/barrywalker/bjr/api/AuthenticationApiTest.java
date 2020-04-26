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
import io.barrywalker.bjr.model.AuthIn;
import io.barrywalker.bjr.model.AuthOut;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for AuthenticationApi
 */
@Ignore
public class AuthenticationApiTest {

    private final AuthenticationApi api = new AuthenticationApi();

    
    /**
     * Authenticates a user and returns a token
     *
     * Authenticates a user and returns a token
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void authenticateUserTest() throws ApiException {
        AuthIn authIn = null;
        AuthOut response = api.authenticateUser(authIn);

        // TODO: test validations
    }
    
}