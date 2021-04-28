//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:BJR/model/busy_thread_count_message_object_hosts.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'busy_thread_count_message_object.g.dart';

abstract class BusyThreadCountMessageObject implements Built<BusyThreadCountMessageObject, BusyThreadCountMessageObjectBuilder> {

    /// The total number of busy workers across all pods/hosts.
    @nullable
    @BuiltValueField(wireName: r'total_busy')
    int get totalBusy;

    @nullable
    @BuiltValueField(wireName: r'hosts')
    BuiltList<BusyThreadCountMessageObjectHosts> get hosts;

    BusyThreadCountMessageObject._();

    static void _initializeBuilder(BusyThreadCountMessageObjectBuilder b) => b;

    factory BusyThreadCountMessageObject([void updates(BusyThreadCountMessageObjectBuilder b)]) = _$BusyThreadCountMessageObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<BusyThreadCountMessageObject> get serializer => _$BusyThreadCountMessageObjectSerializer();
}

class _$BusyThreadCountMessageObjectSerializer implements StructuredSerializer<BusyThreadCountMessageObject> {

    @override
    final Iterable<Type> types = const [BusyThreadCountMessageObject, _$BusyThreadCountMessageObject];
    @override
    final String wireName = r'BusyThreadCountMessageObject';

    @override
    Iterable<Object> serialize(Serializers serializers, BusyThreadCountMessageObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.totalBusy != null) {
            result
                ..add(r'total_busy')
                ..add(serializers.serialize(object.totalBusy,
                    specifiedType: const FullType(int)));
        }
        if (object.hosts != null) {
            result
                ..add(r'hosts')
                ..add(serializers.serialize(object.hosts,
                    specifiedType: const FullType(BuiltList, [FullType(BusyThreadCountMessageObjectHosts)])));
        }
        return result;
    }

    @override
    BusyThreadCountMessageObject deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BusyThreadCountMessageObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'total_busy':
                    result.totalBusy = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'hosts':
                    result.hosts.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(BusyThreadCountMessageObjectHosts)])) as BuiltList<BusyThreadCountMessageObjectHosts>);
                    break;
            }
        }
        return result.build();
    }
}

