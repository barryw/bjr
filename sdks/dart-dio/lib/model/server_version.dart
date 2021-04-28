//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_version.g.dart';

abstract class ServerVersion implements Built<ServerVersion, ServerVersionBuilder> {

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

    /// The BJR server version
    @nullable
    @BuiltValueField(wireName: r'object')
    String get object;

    ServerVersion._();

    static void _initializeBuilder(ServerVersionBuilder b) => b;

    factory ServerVersion([void updates(ServerVersionBuilder b)]) = _$ServerVersion;

    @BuiltValueSerializer(custom: true)
    static Serializer<ServerVersion> get serializer => _$ServerVersionSerializer();
}

class _$ServerVersionSerializer implements StructuredSerializer<ServerVersion> {

    @override
    final Iterable<Type> types = const [ServerVersion, _$ServerVersion];
    @override
    final String wireName = r'ServerVersion';

    @override
    Iterable<Object> serialize(Serializers serializers, ServerVersion object,
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
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ServerVersion deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ServerVersionBuilder();

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
                    result.object = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

