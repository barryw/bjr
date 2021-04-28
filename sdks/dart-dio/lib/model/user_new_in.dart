//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_new_in.g.dart';

abstract class UserNewIn implements Built<UserNewIn, UserNewInBuilder> {

    /// The new user's username. Must be unique.
    @BuiltValueField(wireName: r'username')
    String get username;

    /// The new user's password.
    @BuiltValueField(wireName: r'password')
    String get password;

    /// The new user's password confirmation. Must match 'password'.
    @BuiltValueField(wireName: r'password_confirmation')
    String get passwordConfirmation;

    UserNewIn._();

    static void _initializeBuilder(UserNewInBuilder b) => b;

    factory UserNewIn([void updates(UserNewInBuilder b)]) = _$UserNewIn;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserNewIn> get serializer => _$UserNewInSerializer();
}

class _$UserNewInSerializer implements StructuredSerializer<UserNewIn> {

    @override
    final Iterable<Type> types = const [UserNewIn, _$UserNewIn];
    @override
    final String wireName = r'UserNewIn';

    @override
    Iterable<Object> serialize(Serializers serializers, UserNewIn object,
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
        result
            ..add(r'password_confirmation')
            ..add(serializers.serialize(object.passwordConfirmation,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    UserNewIn deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserNewInBuilder();

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
                case r'password_confirmation':
                    result.passwordConfirmation = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

