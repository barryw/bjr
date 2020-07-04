import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/single_user_message.dart';
import 'package:BJR/model/user_array_message.dart';
import 'package:BJR/model/user_new_in.dart';
import 'package:BJR/model/user_update_in.dart';

class UsersApi {
    final Dio _dio;
    Serializers _serializers;

    UsersApi(this._dio, this._serializers);

        /// Creates a user
        ///
        /// Create a new user. Only root users are allowed to create new users.
        Future<Response<SingleUserMessage>>createUser({ UserNewIn userNewIn,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/user_api";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(userNewIn);
            var jsonuserNewIn = json.encode(serializedBody);
            bodyData = jsonuserNewIn;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SingleUserMessage);
        var data = _serializers.deserializeWith<SingleUserMessage>(serializer, response.data);

            return Response<SingleUserMessage>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Deletes a user
        ///
        /// Deletes a user. Only root users can delete other users.
        Future<Response<SingleUserMessage>>deleteUser(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/user_api/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'delete'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SingleUserMessage);
        var data = _serializers.deserializeWith<SingleUserMessage>(serializer, response.data);

            return Response<SingleUserMessage>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Retrieve a single user
        ///
        /// Retrieve a single user. If you&#39;re a non-root user, then you can only retrieve your own user.
        Future<Response<SingleUserMessage>>getUser(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/user_api/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SingleUserMessage);
        var data = _serializers.deserializeWith<SingleUserMessage>(serializer, response.data);

            return Response<SingleUserMessage>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Retrieves users
        ///
        /// Get a list of users
        Future<Response<UserArrayMessage>>getUsers({ int perPage,int page,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/user_api";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'per_page'] = perPage;
                queryParams[r'page'] = page;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(UserArrayMessage);
        var data = _serializers.deserializeWith<UserArrayMessage>(serializer, response.data);

            return Response<UserArrayMessage>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Update a single user
        ///
        /// Update a single user. If you&#39;re a non-root users, then you can only update your own user.
        Future<Response<SingleUserMessage>>updateUser(int id,{ UserUpdateIn userUpdateIn,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/user_api/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(userUpdateIn);
            var jsonuserUpdateIn = json.encode(serializedBody);
            bodyData = jsonuserUpdateIn;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'put'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(SingleUserMessage);
        var data = _serializers.deserializeWith<SingleUserMessage>(serializer, response.data);

            return Response<SingleUserMessage>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        }
