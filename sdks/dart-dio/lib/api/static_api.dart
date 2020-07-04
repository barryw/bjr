import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/timezone_message.dart';
import 'package:BJR/model/tag_message.dart';
import 'package:BJR/model/server_version.dart';

class StaticApi {
    final Dio _dio;
    Serializers _serializers;

    StaticApi(this._dio, this._serializers);

        /// Get tags
        ///
        /// Retrieves the list of tags that are currently in use for the authenticated user.
        Future<Response<TagMessage>>getTags({ int perPage,int page,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/tags";

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

        var serializer = _serializers.serializerForType(TagMessage);
        var data = _serializers.deserializeWith<TagMessage>(serializer, response.data);

            return Response<TagMessage>(
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
        /// Get timezones
        ///
        /// Get the list of acceptable timezone names.
        Future<Response<TimezoneMessage>>getTimezones({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/timezones";

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

        var serializer = _serializers.serializerForType(TimezoneMessage);
        var data = _serializers.deserializeWith<TimezoneMessage>(serializer, response.data);

            return Response<TimezoneMessage>(
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
        /// Server version
        ///
        /// The BJR server version
        Future<Response<ServerVersion>>getVersion({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/version";

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

        var serializer = _serializers.serializerForType(ServerVersion);
        var data = _serializers.deserializeWith<ServerVersion>(serializer, response.data);

            return Response<ServerVersion>(
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
