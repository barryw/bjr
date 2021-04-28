//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:time_machine/time_machine.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_job.g.dart';

abstract class SingleJob implements Built<SingleJob, SingleJobBuilder> {

    /// The object's primary key. This uniquely identifies the object in the system.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The name of the job.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The cron expression for the job.
    @nullable
    @BuiltValueField(wireName: r'cron')
    String get cron;

    /// Whether the job is enabled or not.
    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    /// The command that is executed when the job fires.
    @nullable
    @BuiltValueField(wireName: r'command')
    String get command;

    /// The last time the job ran.
    @nullable
    @BuiltValueField(wireName: r'last_run')
    String get lastRun;

    /// The date and time of the job's next run.
    @nullable
    @BuiltValueField(wireName: r'next_run')
    OffsetDateTime get nextRun;

    /// Whether the last run of the job was successful.
    @nullable
    @BuiltValueField(wireName: r'success')
    bool get success;

    /// Whether the job is currently running.
    @nullable
    @BuiltValueField(wireName: r'running')
    bool get running;

    /// The timezone that the job will run in.
    @nullable
    @BuiltValueField(wireName: r'timezone')
    String get timezone;

    /// An array of tags associated with the job.
    @nullable
    @BuiltValueField(wireName: r'tags')
    BuiltList<String> get tags;

    /// The UTC date and time that the object was created.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;

    /// The UTC date and time that the object was last modified.
    @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    /// This url will receive a POST request with details about all successful job runs.
    @nullable
    @BuiltValueField(wireName: r'success_callback')
    String get successCallback;

    /// This url will receive a POST request with details about all unsuccessful job runs.
    @nullable
    @BuiltValueField(wireName: r'failure_callback')
    String get failureCallback;

    /// The average runtime across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'avg_run_duration')
    double get avgRunDuration;

    /// The maximum runtime across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'max_run_duration')
    double get maxRunDuration;

    /// The minimum runtime across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'min_run_duration')
    double get minRunDuration;

    /// The average runtime trend across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'avg_run_duration_trend')
    double get avgRunDurationTrend;

    /// The average job lag across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'avg_run_lag')
    double get avgRunLag;

    /// The maximum job lag across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'max_run_lag')
    double get maxRunLag;

    /// The minimum job lag across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'min_run_lag')
    double get minRunLag;

    /// The average job lag trend across all runs of this job.
    @nullable
    @BuiltValueField(wireName: r'avg_run_lag_trend')
    double get avgRunLagTrend;

    SingleJob._();

    static void _initializeBuilder(SingleJobBuilder b) => b;

    factory SingleJob([void updates(SingleJobBuilder b)]) = _$SingleJob;

    @BuiltValueSerializer(custom: true)
    static Serializer<SingleJob> get serializer => _$SingleJobSerializer();
}

class _$SingleJobSerializer implements StructuredSerializer<SingleJob> {

    @override
    final Iterable<Type> types = const [SingleJob, _$SingleJob];
    @override
    final String wireName = r'SingleJob';

    @override
    Iterable<Object> serialize(Serializers serializers, SingleJob object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.cron != null) {
            result
                ..add(r'cron')
                ..add(serializers.serialize(object.cron,
                    specifiedType: const FullType(String)));
        }
        if (object.enabled != null) {
            result
                ..add(r'enabled')
                ..add(serializers.serialize(object.enabled,
                    specifiedType: const FullType(bool)));
        }
        if (object.command != null) {
            result
                ..add(r'command')
                ..add(serializers.serialize(object.command,
                    specifiedType: const FullType(String)));
        }
        if (object.lastRun != null) {
            result
                ..add(r'last_run')
                ..add(serializers.serialize(object.lastRun,
                    specifiedType: const FullType(String)));
        }
        if (object.nextRun != null) {
            result
                ..add(r'next_run')
                ..add(serializers.serialize(object.nextRun,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.success != null) {
            result
                ..add(r'success')
                ..add(serializers.serialize(object.success,
                    specifiedType: const FullType(bool)));
        }
        if (object.running != null) {
            result
                ..add(r'running')
                ..add(serializers.serialize(object.running,
                    specifiedType: const FullType(bool)));
        }
        if (object.timezone != null) {
            result
                ..add(r'timezone')
                ..add(serializers.serialize(object.timezone,
                    specifiedType: const FullType(String)));
        }
        if (object.tags != null) {
            result
                ..add(r'tags')
                ..add(serializers.serialize(object.tags,
                    specifiedType: const FullType(BuiltList, [FullType(String)])));
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
        if (object.successCallback != null) {
            result
                ..add(r'success_callback')
                ..add(serializers.serialize(object.successCallback,
                    specifiedType: const FullType(String)));
        }
        if (object.failureCallback != null) {
            result
                ..add(r'failure_callback')
                ..add(serializers.serialize(object.failureCallback,
                    specifiedType: const FullType(String)));
        }
        if (object.avgRunDuration != null) {
            result
                ..add(r'avg_run_duration')
                ..add(serializers.serialize(object.avgRunDuration,
                    specifiedType: const FullType(double)));
        }
        if (object.maxRunDuration != null) {
            result
                ..add(r'max_run_duration')
                ..add(serializers.serialize(object.maxRunDuration,
                    specifiedType: const FullType(double)));
        }
        if (object.minRunDuration != null) {
            result
                ..add(r'min_run_duration')
                ..add(serializers.serialize(object.minRunDuration,
                    specifiedType: const FullType(double)));
        }
        if (object.avgRunDurationTrend != null) {
            result
                ..add(r'avg_run_duration_trend')
                ..add(serializers.serialize(object.avgRunDurationTrend,
                    specifiedType: const FullType(double)));
        }
        if (object.avgRunLag != null) {
            result
                ..add(r'avg_run_lag')
                ..add(serializers.serialize(object.avgRunLag,
                    specifiedType: const FullType(double)));
        }
        if (object.maxRunLag != null) {
            result
                ..add(r'max_run_lag')
                ..add(serializers.serialize(object.maxRunLag,
                    specifiedType: const FullType(double)));
        }
        if (object.minRunLag != null) {
            result
                ..add(r'min_run_lag')
                ..add(serializers.serialize(object.minRunLag,
                    specifiedType: const FullType(double)));
        }
        if (object.avgRunLagTrend != null) {
            result
                ..add(r'avg_run_lag_trend')
                ..add(serializers.serialize(object.avgRunLagTrend,
                    specifiedType: const FullType(double)));
        }
        return result;
    }

    @override
    SingleJob deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SingleJobBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'cron':
                    result.cron = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'enabled':
                    result.enabled = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'command':
                    result.command = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'last_run':
                    result.lastRun = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'next_run':
                    result.nextRun = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'success':
                    result.success = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'running':
                    result.running = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'timezone':
                    result.timezone = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'tags':
                    result.tags.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(String)])) as BuiltList<String>);
                    break;
                case r'created_at':
                    result.createdAt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'updated_at':
                    result.updatedAt = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'success_callback':
                    result.successCallback = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'failure_callback':
                    result.failureCallback = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'avg_run_duration':
                    result.avgRunDuration = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_run_duration':
                    result.maxRunDuration = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_run_duration':
                    result.minRunDuration = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_run_duration_trend':
                    result.avgRunDurationTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_run_lag':
                    result.avgRunLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'max_run_lag':
                    result.maxRunLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'min_run_lag':
                    result.minRunLag = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'avg_run_lag_trend':
                    result.avgRunLagTrend = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
            }
        }
        return result.build();
    }
}

