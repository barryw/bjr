//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_folder.g.dart';

abstract class SingleFolder implements Built<SingleFolder, SingleFolderBuilder> {

    /// The object's primary key. This uniquely identifies the object in the system.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The folder's name. Must be unique.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The search expression used to determine which jobs appear in this folder.
    @nullable
    @BuiltValueField(wireName: r'expression')
    String get expression;

    /// The number of jobs that match the folder's expression.
    @nullable
    @BuiltValueField(wireName: r'job_count')
    int get jobCount;

    SingleFolder._();

    static void _initializeBuilder(SingleFolderBuilder b) => b;

    factory SingleFolder([void updates(SingleFolderBuilder b)]) = _$SingleFolder;

    @BuiltValueSerializer(custom: true)
    static Serializer<SingleFolder> get serializer => _$SingleFolderSerializer();
}

class _$SingleFolderSerializer implements StructuredSerializer<SingleFolder> {

    @override
    final Iterable<Type> types = const [SingleFolder, _$SingleFolder];
    @override
    final String wireName = r'SingleFolder';

    @override
    Iterable<Object> serialize(Serializers serializers, SingleFolder object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.expression != null) {
            result
                ..add(r'expression')
                ..add(serializers.serialize(object.expression,
                    specifiedType: const FullType(String)));
        }
        if (object.jobCount != null) {
            result
                ..add(r'job_count')
                ..add(serializers.serialize(object.jobCount,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    SingleFolder deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SingleFolderBuilder();

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
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'expression':
                    result.expression = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'job_count':
                    result.jobCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

