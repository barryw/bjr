//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_out.g.dart';

abstract class AuthOut implements Built<AuthOut, AuthOutBuilder> {

    /// The JWT authentication token. This must be passed in the Authorization header on subsequent requests.
    @nullable
    @BuiltValueField(wireName: r'auth_token')
    String get authToken;

    /// The id of the authenticated user.
    @nullable
    @BuiltValueField(wireName: r'user_id')
    int get userId;

    /// If authentication failed, this will contain the reason why.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// This will be true if the authentication was successful, and false if not.
    @nullable
    @BuiltValueField(wireName: r'is_error')
    bool get isError;

    /// The HTTP status code returned.
    @nullable
    @BuiltValueField(wireName: r'status_code')
    int get statusCode;

    AuthOut._();

    static void _initializeBuilder(AuthOutBuilder b) => b;

    factory AuthOut([void updates(AuthOutBuilder b)]) = _$AuthOut;

    @BuiltValueSerializer(custom: true)
    static Serializer<AuthOut> get serializer => _$AuthOutSerializer();
}

class _$AuthOutSerializer implements StructuredSerializer<AuthOut> {

    @override
    final Iterable<Type> types = const [AuthOut, _$AuthOut];
    @override
    final String wireName = r'AuthOut';

    @override
    Iterable<Object> serialize(Serializers serializers, AuthOut object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.authToken != null) {
            result
                ..add(r'auth_token')
                ..add(serializers.serialize(object.authToken,
                    specifiedType: const FullType(String)));
        }
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(int)));
        }
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
        if (object.statusCode != null) {
            result
                ..add(r'status_code')
                ..add(serializers.serialize(object.statusCode,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    AuthOut deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthOutBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'auth_token':
                    result.authToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'user_id':
                    result.userId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'is_error':
                    result.isError = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
                case r'status_code':
                    result.statusCode = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

