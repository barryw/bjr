//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_stats.g.dart';

abstract class TodaysStats implements Built<TodaysStats, TodaysStatsBuilder> {

    /// The total number of jobs that are scheduled.
    @nullable
    @BuiltValueField(wireName: r'total_jobs')
    int get totalJobs;

    /// The trend direction of total_jobs.
    @nullable
    @BuiltValueField(wireName: r'total_jobs_trend')
    double get totalJobsTrend;

    /// The total number of jobs that are enabled. This will be a subset of total_jobs.
    @nullable
    @BuiltValueField(wireName: r'enabled_jobs')
    int get enabledJobs;

    /// The trend direction of enabled_jobs.
    @nullable
    @BuiltValueField(wireName: r'enabled_jobs_trend')
    double get enabledJobsTrend;

    /// The number of jobs that have been run today.
    @nullable
    @BuiltValueField(wireName: r'run_jobs')
    int get runJobs;

    /// The trend direction of run_jobs.
    @nullable
    @BuiltValueField(wireName: r'run_jobs_trend')
    double get runJobsTrend;

    /// The number of jobs that have failed today.
    @nullable
    @BuiltValueField(wireName: r'failed_jobs')
    int get failedJobs;

    /// The trend direction of failed_jobs.
    @nullable
    @BuiltValueField(wireName: r'failed_jobs_trend')
    double get failedJobsTrend;

    /// The average job run time.
    @nullable
    @BuiltValueField(wireName: r'avg_job_runtime')
    double get avgJobRuntime;

    /// The trend direction of avg_job_runtime.
    @nullable
    @BuiltValueField(wireName: r'avg_job_runtime_trend')
    double get avgJobRuntimeTrend;

    /// The max job run time.
    @nullable
    @BuiltValueField(wireName: r'max_job_runtime')
    double get maxJobRuntime;

    /// The trend direction of max_job_runtime.
    @nullable
    @BuiltValueField(wireName: r'max_job_runtime_trend')
    double get maxJobRuntimeTrend;

    /// The min job run time.
    @nullable
    @BuiltValueField(wireName: r'min_job_runtime')
    double get minJobRuntime;

    /// The trend direction of min_job_runtime.
    @nullable
    @BuiltValueField(wireName: r'min_job_runtime_trend')
    double get minJobRuntimeTrend;

    /// The average job lag.
    @nullable
    @BuiltValueField(wireName: r'avg_job_lag')
    double get avgJobLag;

    /// The trend direction of avg_job_lag.
    @nullable
    @BuiltValueField(wireName: r'avg_job_lag_trend')
    double get avgJobLagTrend;

    /// The max job lag.
    @nullable
    @BuiltValueField(wireName: r'max_job_lag')
    double get maxJobLag;

    /// The trend direction of max_job_lag.
    @nullable
    @BuiltValueField(wireName: r'max_job_lag_trend')
    double get maxJobLagTrend;

    /// The min job lag.
    @nullable
    @BuiltValueField(wireName: r'min_job_lag')
    double get minJobLag;

    /// The trend direction of min_job_lag.
    @nullable
    @BuiltValueField(wireName: r'min_job_lag_trend')
    double get minJobLagTrend;

    TodaysStats._();

    static void _initializeBuilder(TodaysStatsBuilder b) => b;

    factory TodaysStats([void updates(TodaysStatsBuilder b)]) = _$TodaysStats;

    @BuiltValueSerializer(custom: true)
    static Serializer<TodaysStats> get serializer => _$TodaysStatsSerializer();
}

class _$TodaysStatsSerializer implements StructuredSerializer<TodaysStats> {

    @override
    final Iterable<Type> types = const [TodaysStats, _$TodaysStats];
    @override
    final String wireName = r'TodaysStats';

    @override
    Iterable<Object> serialize(Serializers serializers, TodaysStats object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.totalJobs != null) {
            result
                ..add(r'total_jobs')
                ..add(serializers.serialize(object.totalJobs,
                    specifiedType: const FullType(int)));
        }
        if (object.totalJobsTrend != null) {
            result
                ..add(r'total_jobs_trend')
                ..add(serializers.serialize(object.totalJobsTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.enabledJobs != null) {
            result
                ..add(r'enabled_jobs')
                ..add(serializers.serialize(object.enabledJobs,
                    specifiedType: const FullType(int)));
        }
        if (object.enabledJobsTrend != null) {
            result
                ..add(r'enabled_jobs_trend')
                ..add(serializers.serialize(object.enabledJobsTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.runJobs != null) {
            result
                ..add(r'run_jobs')
                ..add(serializers.serialize(object.runJobs,
                    specifiedType: const FullType(int)));
        }
        if (object.runJobsTrend != null) {
            result
                ..add(r'run_jobs_trend')
                ..add(serializers.serialize(object.runJobsTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.failedJobs != null) {
            result
                ..add(r'failed_jobs')
                ..add(serializers.serialize(object.failedJobs,
                    specifiedType: const FullType(int)));
        }
        if (object.failedJobsTrend != null) {
            result
                ..add(r'failed_jobs_trend')
                ..add(serializers.serialize(object.failedJobsTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.avgJobRuntime != null) {
            result
                ..add(r'avg_job_runtime')
                ..add(serializers.serialize(object.avgJobRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.avgJobRuntimeTrend != null) {
            result
                ..add(r'avg_job_runtime_trend')
                ..add(serializers.serialize(object.avgJobRuntimeTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.maxJobRuntime != null) {
            result
                ..add(r'max_job_runtime')
                ..add(serializers.serialize(object.maxJobRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.maxJobRuntimeTrend != null) {
            result
                ..add(r'max_job_runtime_trend')
                ..add(serializers.serialize(object.maxJobRuntimeTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.minJobRuntime != null) {
            result
                ..add(r'min_job_runtime')
                ..add(serializers.serialize(object.minJobRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.minJobRuntimeTrend != null) {
            result
                ..add(r'min_job_runtime_trend')
                ..add(serializers.serialize(object.minJobRuntimeTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.avgJobLag != null) {
            result
                ..add(r'avg_job_lag')
                ..add(serializers.serialize(object.avgJobLag,
                    specifiedType: const FullType(double)));
        }
        if (object.avgJobLagTrend != null) {
            result
                ..add(r'avg_job_lag_trend')
                ..add(serializers.serialize(object.avgJobLagTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.maxJobLag != null) {
            result
                ..add(r'max_job_lag')
                ..add(serializers.serialize(object.maxJobLag,
                    specifiedType: const FullType(double)));
        }
        if (object.maxJobLagTrend != null) {
            result
                ..add(r'max_job_lag_trend')
                ..add(serializers.serialize(object.maxJobLagTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.minJobLag != null) {
            result
                ..add(r'min_job_lag')
                ..add(serializers.serialize(object.minJobLag,
                    specifiedType: const FullType(double)));
        }
        if (object.minJobLagTrend != null) {
            result
                ..add(r'min_job_lag_trend')
                ..add(serializers.serialize(object.minJobLagTrend,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    TodaysStats deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TodaysStatsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'total_jobs':
                    result.totalJobs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'total_jobs_trend':
                    result.totalJobsTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'enabled_jobs':
                    result.enabledJobs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'enabled_jobs_trend':
                    result.enabledJobsTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'run_jobs':
                    result.runJobs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'run_jobs_trend':
                    result.runJobsTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'failed_jobs':
                    result.failedJobs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'failed_jobs_trend':
                    result.failedJobsTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_job_runtime':
                    result.avgJobRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_job_runtime_trend':
                    result.avgJobRuntimeTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_job_runtime':
                    result.maxJobRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_job_runtime_trend':
                    result.maxJobRuntimeTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_job_runtime':
                    result.minJobRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_job_runtime_trend':
                    result.minJobRuntimeTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_job_lag':
                    result.avgJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_job_lag_trend':
                    result.avgJobLagTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_job_lag':
                    result.maxJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_job_lag_trend':
                    result.maxJobLagTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_job_lag':
                    result.minJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_job_lag_trend':
                    result.minJobLagTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

