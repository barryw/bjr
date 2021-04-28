//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_in.g.dart';

abstract class JobIn implements Built<JobIn, JobInBuilder> {

    /// The new name of the job. Must be unique.
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The new cron expression for the job.
    @BuiltValueField(wireName: r'cron')
    String get cron;

    /// The command to run when the job fires.
    @BuiltValueField(wireName: r'command')
    String get command;

    /// The timezone to run the job in.
    @nullable
    @BuiltValueField(wireName: r'timezone')
    String get timezone;

    /// Is the job enabled by default?
    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    /// A comma-separated list of tags to associate with this job. You can search jobs by their tags.
    @nullable
    @BuiltValueField(wireName: r'tags')
    String get tags;

    /// Specify the url to receive a POST callback for all successful runs of this job.
    @nullable
    @BuiltValueField(wireName: r'success_callback')
    String get successCallback;

    /// Specify the url to receive a POST callback for all unsuccessful runs of this job.
    @nullable
    @BuiltValueField(wireName: r'failure_callback')
    String get failureCallback;

    JobIn._();

    static void _initializeBuilder(JobInBuilder b) => b;

    factory JobIn([void updates(JobInBuilder b)]) = _$JobIn;

    @BuiltValueSerializer(custom: true)
    static Serializer<JobIn> get serializer => _$JobInSerializer();
}

class _$JobInSerializer implements StructuredSerializer<JobIn> {

    @override
    final Iterable<Type> types = const [JobIn, _$JobIn];
    @override
    final String wireName = r'JobIn';

    @override
    Iterable<Object> serialize(Serializers serializers, JobIn object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'cron')
            ..add(serializers.serialize(object.cron,
                specifiedType: const FullType(String)));
        result
            ..add(r'command')
            ..add(serializers.serialize(object.command,
                specifiedType: const FullType(String)));
        if (object.timezone != null) {
            result
                ..add(r'timezone')
                ..add(serializers.serialize(object.timezone,
                    specifiedType: const FullType(String)));
        }
        if (object.enabled != null) {
            result
                ..add(r'enabled')
                ..add(serializers.serialize(object.enabled,
                    specifiedType: const FullType(bool)));
        }
        if (object.tags != null) {
            result
                ..add(r'tags')
                ..add(serializers.serialize(object.tags,
                    specifiedType: const FullType(String)));
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
        return result;
    }

    @override
    JobIn deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = JobInBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'cron':
                    result.cron = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'command':
                    result.command = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'timezone':
                    result.timezone = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'enabled':
                    result.enabled = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'tags':
                    result.tags = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'success_callback':
                    result.successCallback = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'failure_callback':
                    result.failureCallback = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

