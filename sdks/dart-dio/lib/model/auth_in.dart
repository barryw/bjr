//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_in.g.dart';

abstract class AuthIn implements Built<AuthIn, AuthInBuilder> {

    /// The username of the user to authenticate as
    @BuiltValueField(wireName: r'username')
    String get username;

    /// The password of the user to authenticate as
    @BuiltValueField(wireName: r'password')
    String get password;

    AuthIn._();

    static void _initializeBuilder(AuthInBuilder b) => b;

    factory AuthIn([void updates(AuthInBuilder b)]) = _$AuthIn;

    @BuiltValueSerializer(custom: true)
    static Serializer<AuthIn> get serializer => _$AuthInSerializer();
}

class _$AuthInSerializer implements StructuredSerializer<AuthIn> {

    @override
    final Iterable<Type> types = const [AuthIn, _$AuthIn];
    @override
    final String wireName = r'AuthIn';

    @override
    Iterable<Object> serialize(Serializers serializers, AuthIn object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'username')
            ..add(serializers.serialize(object.username,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    AuthIn deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AuthInBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'username':
                    result.username = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'password':
                    result.password = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

