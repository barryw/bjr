import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/single_job_message.dart';
import 'package:BJR/model/occurrence_message.dart';
import 'package:BJR/model/job_run_array_message.dart';
import 'package:BJR/model/job_in.dart';
import 'package:BJR/model/job_array_message.dart';

class JobsApi {
    final Dio _dio;
    Serializers _serializers;

    JobsApi(this._dio, this._serializers);

        /// Creates a job
        ///
        /// Creates a job
        Future<Response<SingleJobMessage>>createJob({ JobIn jobIn,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(jobIn);
            var jsonjobIn = json.encode(serializedBody);
            bodyData = jsonjobIn;

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

        var serializer = _serializers.serializerForType(SingleJobMessage);
        var data = _serializers.deserializeWith<SingleJobMessage>(serializer, response.data);

            return Response<SingleJobMessage>(
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
        /// Deletes a job
        ///
        /// Deletes a job
        Future<Response<SingleJobMessage>>deleteJob(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(SingleJobMessage);
        var data = _serializers.deserializeWith<SingleJobMessage>(serializer, response.data);

            return Response<SingleJobMessage>(
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
        /// Retrieves a single job
        ///
        /// Retrieves a single job
        Future<Response<SingleJobMessage>>getJob(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}".replaceAll("{" r'id' "}", id.toString());

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

        var serializer = _serializers.serializerForType(SingleJobMessage);
        var data = _serializers.deserializeWith<SingleJobMessage>(serializer, response.data);

            return Response<SingleJobMessage>(
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
        /// Retrieve the runs for a job
        ///
        /// Retrieve the runs for a job
        Future<Response<JobRunArrayMessage>>getJobRuns(int id,{ int perPage,int page,bool succeeded,String startDate,String endDate,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}/runs".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'per_page'] = perPage;
                queryParams[r'page'] = page;
                queryParams[r'succeeded'] = succeeded;
                queryParams[r'start_date'] = startDate;
                queryParams[r'end_date'] = endDate;
                queryParams[r'timezone'] = timezone;
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

        var serializer = _serializers.serializerForType(JobRunArrayMessage);
        var data = _serializers.deserializeWith<JobRunArrayMessage>(serializer, response.data);

            return Response<JobRunArrayMessage>(
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
        /// Retrieves jobs
        ///
        /// Retrieves jobs
        Future<Response<JobArrayMessage>>getJobs({ String expression,String timezone,int perPage,int page,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'expression'] = expression;
                queryParams[r'timezone'] = timezone;
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
        /// Upcoming job occurrences
        ///
        /// Retrieves a list of upcoming occurrences for a job
        Future<Response<OccurrenceMessage>>jobOccurrences(int id,String endDate,{ int perPage,int page,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}/occurrences/{end_date}".replaceAll("{" r'id' "}", id.toString()).replaceAll("{" r'end_date' "}", endDate.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'per_page'] = perPage;
                queryParams[r'page'] = page;
                queryParams[r'timezone'] = timezone;
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

        var serializer = _serializers.serializerForType(OccurrenceMessage);
        var data = _serializers.deserializeWith<OccurrenceMessage>(serializer, response.data);

            return Response<OccurrenceMessage>(
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
        /// Run a job now
        ///
        /// Queues a job to run now
        Future<Response>runJobNow(int id,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}/run_now".replaceAll("{" r'id' "}", id.toString());

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
            method: 'post'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        /// Updates a single job
        ///
        /// Updates a single job
        Future<Response<SingleJobMessage>>updateJob(int id,{ JobIn jobIn,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_api/{id}".replaceAll("{" r'id' "}", id.toString());

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(jobIn);
            var jsonjobIn = json.encode(serializedBody);
            bodyData = jsonjobIn;

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

        var serializer = _serializers.serializerForType(SingleJobMessage);
        var data = _serializers.deserializeWith<SingleJobMessage>(serializer, response.data);

            return Response<SingleJobMessage>(
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
