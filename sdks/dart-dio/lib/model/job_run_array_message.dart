//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/model/single_job_run.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_run_array_message.g.dart';

abstract class JobRunArrayMessage implements Built<JobRunArrayMessage, JobRunArrayMessageBuilder> {

    /// The status message returned from the API call.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// True if there was an error performing the API call.
    @nullable
    @BuiltValueField(wireName: r'is_error')
    bool get isError;

    /// The type of object being returned.
    @nullable
    @BuiltValueField(wireName: r'object_type')
    String get objectType;

    /// The HTTP status code returned.
    @nullable
    @BuiltValueField(wireName: r'status_code')
    int get statusCode;

    @nullable
    @BuiltValueField(wireName: r'object')
    BuiltList<SingleJobRun> get object;

    JobRunArrayMessage._();

    static void _initializeBuilder(JobRunArrayMessageBuilder b) => b;

    factory JobRunArrayMessage([void updates(JobRunArrayMessageBuilder b)]) = _$JobRunArrayMessage;

    @BuiltValueSerializer(custom: true)
    static Serializer<JobRunArrayMessage> get serializer => _$JobRunArrayMessageSerializer();
}

class _$JobRunArrayMessageSerializer implements StructuredSerializer<JobRunArrayMessage> {

    @override
    final Iterable<Type> types = const [JobRunArrayMessage, _$JobRunArrayMessage];
    @override
    final String wireName = r'JobRunArrayMessage';

    @override
    Iterable<Object> serialize(Serializers serializers, JobRunArrayMessage object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        if (object.isError != null) {
            result
                ..add(r'is_error')
                ..add(serializers.serialize(object.isError,
                    specifiedType: const FullType(bool)));
        }
        if (object.objectType != null) {
            result
                ..add(r'object_type')
                ..add(serializers.serialize(object.objectType,
                    specifiedType: const FullType(String)));
        }
        if (object.statusCode != null) {
            result
                ..add(r'status_code')
                ..add(serializers.serialize(object.statusCode,
                    specifiedType: const FullType(int)));
        }
        if (object.object != null) {
            result
                ..add(r'object')
                ..add(serializers.serialize(object.object,
                    specifiedType: const FullType(BuiltList, [FullType(SingleJobRun)])));
        }
        return result;
    }

    @override
    JobRunArrayMessage deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = JobRunArrayMessageBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'is_error':
                    result.isError = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'object_type':
                    result.objectType = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status_code':
                    result.statusCode = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'object':
                    result.object.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(SingleJobRun)])) as BuiltList<SingleJobRun>);
                    break;
            }
        }
        return result.build();
    }
}

