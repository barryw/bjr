//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'busy_thread_count_message_object_hosts.g.dart';

abstract class BusyThreadCountMessageObjectHosts implements Built<BusyThreadCountMessageObjectHosts, BusyThreadCountMessageObjectHostsBuilder> {

    /// The name of the worker host.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The number of busy threads on the worker.
    @nullable
    @BuiltValueField(wireName: r'busy')
    int get busy;

    /// The process ID of the worker process.
    @nullable
    @BuiltValueField(wireName: r'pid')
    int get pid;

    BusyThreadCountMessageObjectHosts._();

    static void _initializeBuilder(BusyThreadCountMessageObjectHostsBuilder b) => b;

    factory BusyThreadCountMessageObjectHosts([void updates(BusyThreadCountMessageObjectHostsBuilder b)]) = _$BusyThreadCountMessageObjectHosts;

    @BuiltValueSerializer(custom: true)
    static Serializer<BusyThreadCountMessageObjectHosts> get serializer => _$BusyThreadCountMessageObjectHostsSerializer();
}

class _$BusyThreadCountMessageObjectHostsSerializer implements StructuredSerializer<BusyThreadCountMessageObjectHosts> {

    @override
    final Iterable<Type> types = const [BusyThreadCountMessageObjectHosts, _$BusyThreadCountMessageObjectHosts];
    @override
    final String wireName = r'BusyThreadCountMessageObjectHosts';

    @override
    Iterable<Object> serialize(Serializers serializers, BusyThreadCountMessageObjectHosts object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.busy != null) {
            result
                ..add(r'busy')
                ..add(serializers.serialize(object.busy,
                    specifiedType: const FullType(int)));
        }
        if (object.pid != null) {
            result
                ..add(r'pid')
                ..add(serializers.serialize(object.pid,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    BusyThreadCountMessageObjectHosts deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = BusyThreadCountMessageObjectHostsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'busy':
                    result.busy = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'pid':
                    result.pid = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

