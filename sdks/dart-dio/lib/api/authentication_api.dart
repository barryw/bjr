import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/auth_out.dart';
import 'package:BJR/model/auth_in.dart';

class AuthenticationApi {
    final Dio _dio;
    Serializers _serializers;

    AuthenticationApi(this._dio, this._serializers);

        /// Authenticates a user and returns a token
        ///
        /// Authenticates a user and returns a token
        Future<Response<AuthOut>>authenticateUser({ AuthIn authIn,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/authenticate";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(authIn);
            var jsonauthIn = json.encode(serializedBody);
            bodyData = jsonauthIn;

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

        var serializer = _serializers.serializerForType(AuthOut);
        var data = _serializers.deserializeWith<AuthOut>(serializer, response.data);

            return Response<AuthOut>(
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
