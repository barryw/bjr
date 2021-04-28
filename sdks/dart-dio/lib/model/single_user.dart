//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:time_machine/time_machine.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_user.g.dart';

abstract class SingleUser implements Built<SingleUser, SingleUserBuilder> {

    /// The object's primary key. This uniquely identifies the object in the system.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The user' login name. Must be unique
    @nullable
    @BuiltValueField(wireName: r'username')
    String get username;

    /// The UTC date and time that the object was created.
    @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;

    /// The UTC date and time that the object was last modified.
    @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    SingleUser._();

    static void _initializeBuilder(SingleUserBuilder b) => b;

    factory SingleUser([void updates(SingleUserBuilder b)]) = _$SingleUser;

    @BuiltValueSerializer(custom: true)
    static Serializer<SingleUser> get serializer => _$SingleUserSerializer();
}

class _$SingleUserSerializer implements StructuredSerializer<SingleUser> {

    @override
    final Iterable<Type> types = const [SingleUser, _$SingleUser];
    @override
    final String wireName = r'SingleUser';

    @override
    Iterable<Object> serialize(Serializers serializers, SingleUser object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.username != null) {
            result
                ..add(r'username')
                ..add(serializers.serialize(object.username,
                    specifiedType: const FullType(String)));
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
    SingleUser deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SingleUserBuilder();

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
                case r'username':
                    result.username = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
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

