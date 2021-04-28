//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_update_in.g.dart';

abstract class UserUpdateIn implements Built<UserUpdateIn, UserUpdateInBuilder> {

    /// The new user's password.
    @BuiltValueField(wireName: r'password')
    String get password;

    /// The new user's password confirmation. Must match 'password'.
    @BuiltValueField(wireName: r'password_confirmation')
    String get passwordConfirmation;

    UserUpdateIn._();

    static void _initializeBuilder(UserUpdateInBuilder b) => b;

    factory UserUpdateIn([void updates(UserUpdateInBuilder b)]) = _$UserUpdateIn;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserUpdateIn> get serializer => _$UserUpdateInSerializer();
}

class _$UserUpdateInSerializer implements StructuredSerializer<UserUpdateIn> {

    @override
    final Iterable<Type> types = const [UserUpdateIn, _$UserUpdateIn];
    @override
    final String wireName = r'UserUpdateIn';

    @override
    Iterable<Object> serialize(Serializers serializers, UserUpdateIn object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
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
    UserUpdateIn deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserUpdateInBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
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

