//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:time_machine/time_machine.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_job_run.g.dart';

abstract class SingleJobRun implements Built<SingleJobRun, SingleJobRunBuilder> {

    /// The object's primary key. This uniquely identifies the object in the system.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// Whether the run was successful or not.
    @nullable
    @BuiltValueField(wireName: r'success')
    bool get success;

    /// The return code that the command exited with. 0 means success.
    @nullable
    @BuiltValueField(wireName: r'return_code')
    int get returnCode;

    /// If the run failed, the error message that was returned.
    @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;

    /// The text written to STDOUT as part of the job.
    @nullable
    @BuiltValueField(wireName: r'stdout')
    String get stdout;

    /// The text written to STDERR as part of the job.
    @nullable
    @BuiltValueField(wireName: r'stderr')
    String get stderr;

    /// The date and time that the run started.
    @nullable
    @BuiltValueField(wireName: r'start_time')
    OffsetDateTime get startTime;

    /// The date and time that the run ended.
    @nullable
    @BuiltValueField(wireName: r'end_time')
    OffsetDateTime get endTime;

    /// The date and time that the job should have run.
    @nullable
    @BuiltValueField(wireName: r'scheduled_start_time')
    OffsetDateTime get scheduledStartTime;

    /// The difference in seconds between when the job was scheduled to run and when it ran.
    @nullable
    @BuiltValueField(wireName: r'schedule_diff_in_seconds')
    int get scheduleDiffInSeconds;

    /// The job that the run is associated with.
    @nullable
    @BuiltValueField(wireName: r'job_id')
    int get jobId;

    /// True if the job was run manually as opposed to run on a schedule.
    @nullable
    @BuiltValueField(wireName: r'is_manual')
    bool get isManual;

    /// The date and time that the run record was created in UTC.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;

    /// The date and time that the run record was last updated in UTC.
    @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    SingleJobRun._();

    static void _initializeBuilder(SingleJobRunBuilder b) => b;

    factory SingleJobRun([void updates(SingleJobRunBuilder b)]) = _$SingleJobRun;

    @BuiltValueSerializer(custom: true)
    static Serializer<SingleJobRun> get serializer => _$SingleJobRunSerializer();
}

class _$SingleJobRunSerializer implements StructuredSerializer<SingleJobRun> {

    @override
    final Iterable<Type> types = const [SingleJobRun, _$SingleJobRun];
    @override
    final String wireName = r'SingleJobRun';

    @override
    Iterable<Object> serialize(Serializers serializers, SingleJobRun object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.success != null) {
            result
                ..add(r'success')
                ..add(serializers.serialize(object.success,
                    specifiedType: const FullType(bool)));
        }
        if (object.returnCode != null) {
            result
                ..add(r'return_code')
                ..add(serializers.serialize(object.returnCode,
                    specifiedType: const FullType(int)));
        }
        if (object.errorMessage != null) {
            result
                ..add(r'error_message')
                ..add(serializers.serialize(object.errorMessage,
                    specifiedType: const FullType(String)));
        }
        if (object.stdout != null) {
            result
                ..add(r'stdout')
                ..add(serializers.serialize(object.stdout,
                    specifiedType: const FullType(String)));
        }
        if (object.stderr != null) {
            result
                ..add(r'stderr')
                ..add(serializers.serialize(object.stderr,
                    specifiedType: const FullType(String)));
        }
        if (object.startTime != null) {
            result
                ..add(r'start_time')
                ..add(serializers.serialize(object.startTime,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.endTime != null) {
            result
                ..add(r'end_time')
                ..add(serializers.serialize(object.endTime,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.scheduledStartTime != null) {
            result
                ..add(r'scheduled_start_time')
                ..add(serializers.serialize(object.scheduledStartTime,
                    specifiedType: const FullType(OffsetDateTime)));
        }
        if (object.scheduleDiffInSeconds != null) {
            result
                ..add(r'schedule_diff_in_seconds')
                ..add(serializers.serialize(object.scheduleDiffInSeconds,
                    specifiedType: const FullType(int)));
        }
        if (object.jobId != null) {
            result
                ..add(r'job_id')
                ..add(serializers.serialize(object.jobId,
                    specifiedType: const FullType(int)));
        }
        if (object.isManual != null) {
            result
                ..add(r'is_manual')
                ..add(serializers.serialize(object.isManual,
                    specifiedType: const FullType(bool)));
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
    SingleJobRun deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SingleJobRunBuilder();

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
                case r'success':
                    result.success = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'return_code':
                    result.returnCode = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'error_message':
                    result.errorMessage = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'stdout':
                    result.stdout = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'stderr':
                    result.stderr = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'start_time':
                    result.startTime = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'end_time':
                    result.endTime = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'scheduled_start_time':
                    result.scheduledStartTime = serializers.deserialize(value,
                        specifiedType: const FullType(OffsetDateTime)) as OffsetDateTime;
                    break;
                case r'schedule_diff_in_seconds':
                    result.scheduleDiffInSeconds = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'job_id':
                    result.jobId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'is_manual':
                    result.isManual = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
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

