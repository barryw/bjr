//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:BJR/model/single_folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folder_array_message.g.dart';

abstract class FolderArrayMessage implements Built<FolderArrayMessage, FolderArrayMessageBuilder> {

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
    BuiltList<SingleFolder> get object;

    FolderArrayMessage._();

    static void _initializeBuilder(FolderArrayMessageBuilder b) => b;

    factory FolderArrayMessage([void updates(FolderArrayMessageBuilder b)]) = _$FolderArrayMessage;

    @BuiltValueSerializer(custom: true)
    static Serializer<FolderArrayMessage> get serializer => _$FolderArrayMessageSerializer();
}

class _$FolderArrayMessageSerializer implements StructuredSerializer<FolderArrayMessage> {

    @override
    final Iterable<Type> types = const [FolderArrayMessage, _$FolderArrayMessage];
    @override
    final String wireName = r'FolderArrayMessage';

    @override
    Iterable<Object> serialize(Serializers serializers, FolderArrayMessage object,
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
                    specifiedType: const FullType(BuiltList, [FullType(SingleFolder)])));
        }
        return result;
    }

    @override
    FolderArrayMessage deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FolderArrayMessageBuilder();

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
                        specifiedType: const FullType(BuiltList, [FullType(SingleFolder)])) as BuiltList<SingleFolder>);
                    break;
            }
        }
        return result.build();
    }
}

