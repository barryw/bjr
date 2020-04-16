# bjr_api_v1

BjrApiV1 - JavaScript client for bjr_api_v1
No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: v1
- Build package: io.swagger.codegen.v3.generators.javascript.JavaScriptClientCodegen

## Installation

### For [Node.js](https://nodejs.org/)

#### npm

To publish the library as a [npm](https://www.npmjs.com/),
please follow the procedure in ["Publishing npm packages"](https://docs.npmjs.com/getting-started/publishing-npm-packages).

Then install it via:

```shell
npm install bjr_api_v1 --save
```

#### git
#
If the library is hosted at a git repository, e.g.
https://github.com/GIT_USER_ID/GIT_REPO_ID
then install it via:

```shell
    npm install GIT_USER_ID/GIT_REPO_ID --save
```

### For browser

The library also works in the browser environment via npm and [browserify](http://browserify.org/). After following
the above steps with Node.js and installing browserify with `npm install -g browserify`,
perform the following (assuming *main.js* is your entry file):

```shell
browserify main.js > bundle.js
```

Then include *bundle.js* in the HTML pages.

### Webpack Configuration

Using Webpack you may encounter the following error: "Module not found: Error:
Cannot resolve module", most certainly you should disable AMD loader. Add/merge
the following section to your webpack config:

```javascript
module: {
  rules: [
    {
      parser: {
        amd: false
      }
    }
  ]
}
```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following JS code:

```javascript
var BjrApiV1 = require('bjr_api_v1');

var api = new BjrApiV1.DefaultApi()

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
api.authenticatePost(, callback);
```

## Documentation for API Endpoints

All URIs are relative to */*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BjrApiV1.DefaultApi* | [**authenticatePost**](docs/DefaultApi.md#authenticatePost) | **POST** /authenticate | Authenticates a user and returns a token
*BjrApiV1.DefaultApi* | [**jobApiGet**](docs/DefaultApi.md#jobApiGet) | **GET** /job_api | Retrieves jobs
*BjrApiV1.DefaultApi* | [**jobApiIdDelete**](docs/DefaultApi.md#jobApiIdDelete) | **DELETE** /job_api/{id} | Deletes a job
*BjrApiV1.DefaultApi* | [**jobApiIdGet**](docs/DefaultApi.md#jobApiIdGet) | **GET** /job_api/{id} | Retrieves a single job
*BjrApiV1.DefaultApi* | [**jobApiIdPut**](docs/DefaultApi.md#jobApiIdPut) | **PUT** /job_api/{id} | Updates a single job
*BjrApiV1.DefaultApi* | [**jobApiPost**](docs/DefaultApi.md#jobApiPost) | **POST** /job_api | Creates a job
*BjrApiV1.DefaultApi* | [**userApiGet**](docs/DefaultApi.md#userApiGet) | **GET** /user_api | Retrieves users
*BjrApiV1.DefaultApi* | [**userApiIdDelete**](docs/DefaultApi.md#userApiIdDelete) | **DELETE** /user_api/{id} | Deletes a user
*BjrApiV1.DefaultApi* | [**userApiIdGet**](docs/DefaultApi.md#userApiIdGet) | **GET** /user_api/{id} | Retrieve a single user
*BjrApiV1.DefaultApi* | [**userApiIdPut**](docs/DefaultApi.md#userApiIdPut) | **PUT** /user_api/{id} | Update a single user
*BjrApiV1.DefaultApi* | [**userApiPost**](docs/DefaultApi.md#userApiPost) | **POST** /user_api | Creates a user

## Documentation for Models

 - [BjrApiV1.AuthIn](docs/AuthIn.md)
 - [BjrApiV1.AuthOut](docs/AuthOut.md)
 - [BjrApiV1.JobArray](docs/JobArray.md)
 - [BjrApiV1.JobIn](docs/JobIn.md)
 - [BjrApiV1.JobOut](docs/JobOut.md)
 - [BjrApiV1.SingleJob](docs/SingleJob.md)
 - [BjrApiV1.SingleUser](docs/SingleUser.md)
 - [BjrApiV1.UserArray](docs/UserArray.md)
 - [BjrApiV1.UserNewIn](docs/UserNewIn.md)
 - [BjrApiV1.UserOut](docs/UserOut.md)
 - [BjrApiV1.UserUpdateIn](docs/UserUpdateIn.md)

## Documentation for Authorization


### bearerAuth

