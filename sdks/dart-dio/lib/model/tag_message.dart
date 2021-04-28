//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/model/tag.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_message.g.dart';

abstract class TagMessage implements Built<TagMessage, TagMessageBuilder> {

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
    BuiltList<Tag> get object;

    TagMessage._();

    static void _initializeBuilder(TagMessageBuilder b) => b;

    factory TagMessage([void updates(TagMessageBuilder b)]) = _$TagMessage;

    @BuiltValueSerializer(custom: true)
    static Serializer<TagMessage> get serializer => _$TagMessageSerializer();
}

class _$TagMessageSerializer implements StructuredSerializer<TagMessage> {

    @override
    final Iterable<Type> types = const [TagMessage, _$TagMessage];
    @override
    final String wireName = r'TagMessage';

    @override
    Iterable<Object> serialize(Serializers serializers, TagMessage object,
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
                    specifiedType: const FullType(BuiltList, [FullType(Tag)])));
        }
        return result;
    }

    @override
    TagMessage deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TagMessageBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(Tag)])) as BuiltList<Tag>);
                    break;
            }
        }
        return result.build();
    }
}

