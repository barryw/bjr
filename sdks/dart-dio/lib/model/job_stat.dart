//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:time_machine/time_machine.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_stat.g.dart';

abstract class JobStat implements Built<JobStat, JobStatBuilder> {

    /// The number of job runs in the period.
    @nullable
    @BuiltValueField(wireName: r'runs')
    int get runs;

    /// The number of job runs that failed in the period.
    @nullable
    @BuiltValueField(wireName: r'failed')
    int get failed;

    /// The number of jobs that executed in the period.
    @nullable
    @BuiltValueField(wireName: r'job_count')
    int get jobCount;

    /// The average runtime in seconds of all jobs in the period.
    @nullable
    @BuiltValueField(wireName: r'avg_runtime')
    double get avgRuntime;

    /// The max runtime in seconds of all jobs in the period.
    @nullable
    @BuiltValueField(wireName: r'max_runtime')
    double get maxRuntime;

    /// The min runtime in seconds of all jobs in the period.
    @nullable
    @BuiltValueField(wireName: r'min_runtime')
    double get minRuntime;

    /// The total number of jobs.
    @nullable
    @BuiltValueField(wireName: r'total_jobs')
    int get totalJobs;

    /// Of the total number of jobs, this is how many were enabled.
    @nullable
    @BuiltValueField(wireName: r'total_enabled')
    int get totalEnabled;

    /// The average job lag in seconds.
    @nullable
    @BuiltValueField(wireName: r'avg_job_lag')
    double get avgJobLag;

    /// The maximum job lag in seconds.
    @nullable
    @BuiltValueField(wireName: r'max_job_lag')
    int get maxJobLag;

    /// The minimum job lag in seconds.
    @nullable
    @BuiltValueField(wireName: r'min_job_lag')
    int get minJobLag;

    /// The runtime period.
    @nullable
    @BuiltValueField(wireName: r'period')
    String get period;

    /// The period start date.
    @nullable
    @BuiltValueField(wireName: r'start_dt')
    OffsetDateTime get startDt;

    /// The period end date.
    @nullable
    @BuiltValueField(wireName: r'end_dt')
    OffsetDateTime get endDt;

    /// The date the record was created.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;

    /// The date the record was last updated.
    @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    JobStat._();

    static void _initializeBuilder(JobStatBuilder b) => b;

    factory JobStat([void updates(JobStatBuilder b)]) = _$JobStat;

    @BuiltValueSerializer(custom: true)
    static Serializer<JobStat> get serializer => _$JobStatSerializer();
}

class _$JobStatSerializer implements StructuredSerializer<JobStat> {

    @override
    final Iterable<Type> types = const [JobStat, _$JobStat];
    @override
    final String wireName = r'JobStat';

    @override
    Iterable<Object> serialize(Serializers serializers, JobStat object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.runs != null) {
            result
                ..add(r'runs')
                ..add(serializers.serialize(object.runs,
                    specifiedType: const FullType(int)));
        }
        if (object.failed != null) {
            result
                ..add(r'failed')
                ..add(serializers.serialize(object.failed,
                    specifiedType: const FullType(int)));
        }
        if (object.jobCount != null) {
            result
                ..add(r'job_count')
                ..add(serializers.serialize(object.jobCount,
                    specifiedType: const FullType(int)));
        }
        if (object.avgRuntime != null) {
            result
                ..add(r'avg_runtime')
                ..add(serializers.serialize(object.avgRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.maxRuntime != null) {
            result
                ..add(r'max_runtime')
                ..add(serializers.serialize(object.maxRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.minRuntime != null) {
            result
                ..add(r'min_runtime')
                ..add(serializers.serialize(object.minRuntime,
                    specifiedType: const FullType(double)));
        }
        if (object.totalJobs != null) {
            result
                ..add(r'total_jobs')
                ..add(serializers.serialize(object.totalJobs,
                    specifiedType: const FullType(int)));
        }
        if (object.totalEnabled != null) {
            result
                ..add(r'total_enabled')
                ..add(serializers.serialize(object.totalEnabled,
                    specifiedType: const FullType(int)));
        }
        if (object.avgJobLag != null) {
            result
                ..add(r'avg_job_lag')
                ..add(serializers.serialize(object.avgJobLag,
                    specifiedType: const FullType(double)));
        }
        if (object.maxJobLag != null) {
            result
                ..add(r'max_job_lag')
                ..add(serializers.serialize(object.maxJobLag,
                    specifiedType: const FullType(int)));
        }
        if (object.minJobLag != null) {
            result
                ..add(r'min_job_lag')
                ..add(serializers.serialize(object.minJobLag,
                    specifiedType: const FullType(int)));
        }
        if (object.period != null) {
            result
                ..add(r'period')
                ..add(serializers.serialize(object.period,
                    specifiedType: const FullType(String)));
        }
        if (object.startDt != null) {
            result
                ..add(r'start_dt')
                ..add(serializers.serialize(object.startDt,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.endDt != null) {
            result
                ..add(r'end_dt')
                ..add(serializers.serialize(object.endDt,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.createdAt != null) {
            result
                ..add(r'created_at')
                ..add(serializers.serialize(object.createdAt,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.updatedAt != null) {
            result
                ..add(r'updated_at')
                ..add(serializers.serialize(object.updatedAt,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        return result;
    }

    @override
    JobStat deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = JobStatBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'runs':
                    result.runs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'failed':
                    result.failed = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'job_count':
                    result.jobCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'avg_runtime':
                    result.avgRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_runtime':
                    result.maxRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_runtime':
                    result.minRuntime = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'total_jobs':
                    result.totalJobs = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'total_enabled':
                    result.totalEnabled = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'avg_job_lag':
                    result.avgJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_job_lag':
                    result.maxJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'min_job_lag':
                    result.minJobLag = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'period':
                    result.period = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'start_dt':
                    result.startDt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'end_dt':
                    result.endDt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'created_at':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'updated_at':
                    result.updatedAt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
            }
        }
        return result.build();
    }
}

