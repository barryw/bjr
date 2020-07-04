import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:BJR/model/job_stat_message.dart';
import 'package:BJR/model/todays_stats_message.dart';
import 'package:BJR/model/generic_message.dart';
import 'package:BJR/model/job_array_message.dart';
import 'package:BJR/model/busy_thread_count_message.dart';

class JobServerApi {
    final Dio _dio;
    Serializers _serializers;

    JobServerApi(this._dio, this._serializers);

        /// Retrieve the count of busy workers across worker pods/nodes
        ///
        /// Retrieve the count of busy workers across worker pods/nodes
        Future<Response<BusyThreadCountMessage>>getBusyThreadCount({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/busy_thread_count";

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

        var serializer = _serializers.serializerForType(BusyThreadCountMessage);
        var data = _serializers.deserializeWith<BusyThreadCountMessage>(serializer, response.data);

            return Response<BusyThreadCountMessage>(
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
        /// Quiesce a single worker pod/node
        ///
        /// Quiesce a single worker pod/node
        Future<Response<GenericMessage>>quiesceNode(String host,{ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/quiesce_worker";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'host'] = host;
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

        var serializer = _serializers.serializerForType(GenericMessage);
        var data = _serializers.deserializeWith<GenericMessage>(serializer, response.data);

            return Response<GenericMessage>(
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
        /// List of recent jobs
        ///
        /// Get a list of the most recently run jobs
        Future<Response<JobArrayMessage>>recentJobs({ int count,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/recent_jobs";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'count'] = count;
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
        /// Job statistics by day
        ///
        /// Get daily job statistics
        Future<Response<JobStatMessage>>statsByDay({ String startDate,String endDate,int perPage,int page,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/daily_job_stats";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'start_date'] = startDate;
                queryParams[r'end_date'] = endDate;
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

        var serializer = _serializers.serializerForType(JobStatMessage);
        var data = _serializers.deserializeWith<JobStatMessage>(serializer, response.data);

            return Response<JobStatMessage>(
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
        /// Job statistics by hour
        ///
        /// Get hourly job statistics for the day
        Future<Response<JobStatMessage>>statsByHour({ String startDate,String endDate,int perPage,int page,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/hourly_job_stats";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'start_date'] = startDate;
                queryParams[r'end_date'] = endDate;
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

        var serializer = _serializers.serializerForType(JobStatMessage);
        var data = _serializers.deserializeWith<JobStatMessage>(serializer, response.data);

            return Response<JobStatMessage>(
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
        /// Job statistics by minute
        ///
        /// Get minutely job statistics
        Future<Response<JobStatMessage>>statsByMinute({ String startDate,String endDate,int perPage,int page,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/minutely_job_stats";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'start_date'] = startDate;
                queryParams[r'end_date'] = endDate;
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

        var serializer = _serializers.serializerForType(JobStatMessage);
        var data = _serializers.deserializeWith<JobStatMessage>(serializer, response.data);

            return Response<JobStatMessage>(
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
        /// Job statistics by week
        ///
        /// Get weekly job statistics
        Future<Response<JobStatMessage>>statsByWeek({ String startDate,String endDate,int perPage,int page,String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/weekly_job_stats";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'start_date'] = startDate;
                queryParams[r'end_date'] = endDate;
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

        var serializer = _serializers.serializerForType(JobStatMessage);
        var data = _serializers.deserializeWith<JobStatMessage>(serializer, response.data);

            return Response<JobStatMessage>(
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
        /// Todays Stats
        ///
        /// Get the high level job statistics for today
        Future<Response<TodaysStatsMessage>>todaysStats({ String timezone,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/todays_stats";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

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

        var serializer = _serializers.serializerForType(TodaysStatsMessage);
        var data = _serializers.deserializeWith<TodaysStatsMessage>(serializer, response.data);

            return Response<TodaysStatsMessage>(
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
        /// List of upcoming jobs
        ///
        /// A list of jobs that are about to execute
        Future<Response<JobArrayMessage>>upcomingJobs({ int count,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/job_server_api/upcoming_jobs";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'count'] = count;
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
        }
