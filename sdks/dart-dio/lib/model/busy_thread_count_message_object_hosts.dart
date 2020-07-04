        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'busy_thread_count_message_object_hosts.g.dart';

abstract class BusyThreadCountMessageObjectHosts implements Built<BusyThreadCountMessageObjectHosts, BusyThreadCountMessageObjectHostsBuilder> {

    /* The name of the worker host. */
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* The number of busy threads on the worker. */
        @nullable
    @BuiltValueField(wireName: r'busy')
    int get busy;
    /* The process ID of the worker process. */
        @nullable
    @BuiltValueField(wireName: r'pid')
    int get pid;

    // Boilerplate code needed to wire-up generated code
    BusyThreadCountMessageObjectHosts._();

    factory BusyThreadCountMessageObjectHosts([updates(BusyThreadCountMessageObjectHostsBuilder b)]) = _$BusyThreadCountMessageObjectHosts;
    static Serializer<BusyThreadCountMessageObjectHosts> get serializer => _$busyThreadCountMessageObjectHostsSerializer;

}

