import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/single_job_message.dart';
import 'package:BJR/model/folder_array_message.dart';
import 'package:BJR/model/single_folder_message.dart';
import 'package:BJR/model/job_array_message.dart';

class FoldersApi {
    final Dio _dio;
    Serializers _serializers;

    FoldersApi(this._dio, this._serializers);

        /// Create a new Folder
        ///
        /// Create a new Folder
        Future<Response<SingleFolderMessage>>createFolder(String name,String expression,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'name'] = name;
                queryParams[r'expression'] = expression;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



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

        var serializer = _serializers.serializerForType(SingleFolderMessage);
        var data = _serializers.deserializeWith<SingleFolderMessage>(serializer, response.data);

            return Response<SingleFolderMessage>(
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
        /// Delete an existing folder
        ///
        /// Delete an existing folder
        Future<Response<SingleFolderMessage>>deleteFolder(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(SingleFolderMessage);
        var data = _serializers.deserializeWith<SingleFolderMessage>(serializer, response.data);

            return Response<SingleFolderMessage>(
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
        /// Return a single folder
        ///
        /// Return a single folder
        Future<Response<SingleFolderMessage>>getFolder(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(SingleFolderMessage);
        var data = _serializers.deserializeWith<SingleFolderMessage>(serializer, response.data);

            return Response<SingleFolderMessage>(
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
        /// Return list of jobs in a folder
        ///
        /// Return list of jobs in a folder
        Future<Response<JobArrayMessage>>getFolderJobs(int id,{ int perPage,int page,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api/{id}/jobs".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(JobArrayMessage);
        var data = _serializers.deserializeWith<JobArrayMessage>(serializer, response.data);

            return Response<JobArrayMessage>(
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
        /// Return paginated list of all folders
        ///
        /// Return paginated list of all folders
        Future<Response<FolderArrayMessage>>getFolders({ int perPage,int page,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api";

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

        var serializer = _serializers.serializerForType(FolderArrayMessage);
        var data = _serializers.deserializeWith<FolderArrayMessage>(serializer, response.data);

            return Response<FolderArrayMessage>(
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
        /// Update an existing folder
        ///
        /// Update an existing folder
        Future<Response<SingleFolderMessage>>updateFolder(int id,{ String name,String expression,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/folder_api/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'name'] = name;
                queryParams[r'expression'] = expression;
        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



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

        var serializer = _serializers.serializerForType(SingleFolderMessage);
        var data = _serializers.deserializeWith<SingleFolderMessage>(serializer, response.data);

            return Response<SingleFolderMessage>(
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
