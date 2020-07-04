library BJR.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:BJR/serializers.dart';
import 'package:BJR/api/authentication_api.dart';
import 'package:BJR/api/folders_api.dart';
import 'package:BJR/api/job_server_api.dart';
import 'package:BJR/api/jobs_api.dart';
import 'package:BJR/api/static_api.dart';
import 'package:BJR/api/users_api.dart';


class BJR {

    Dio dio;
    Serializers serializers;
    String basePath = "http://localhost";

    BJR({this.dio, Serializers serializers}) {
    if (dio == null) {
        BaseOptions options = new BaseOptions(
            baseUrl: basePath,
            connectTimeout: 5000,
            receiveTimeout: 3000,
        );
        this.dio = new Dio(options);
    }

    this.serializers = serializers ?? standardSerializers;
}


    /**
    * Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
    }


    /**
    * Get FoldersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    FoldersApi getFoldersApi() {
    return FoldersApi(dio, serializers);
    }


    /**
    * Get JobServerApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    JobServerApi getJobServerApi() {
    return JobServerApi(dio, serializers);
    }


    /**
    * Get JobsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    JobsApi getJobsApi() {
    return JobsApi(dio, serializers);
    }


    /**
    * Get StaticApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    StaticApi getStaticApi() {
    return StaticApi(dio, serializers);
    }


    /**
    * Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
    }


}