            import 'package:built_collection/built_collection.dart';
            import 'package:BJR/model/busy_thread_count_message_object_hosts.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'busy_thread_count_message_object.g.dart';

abstract class BusyThreadCountMessageObject implements Built<BusyThreadCountMessageObject, BusyThreadCountMessageObjectBuilder> {

    /* The total number of busy workers across all pods/hosts. */
        @nullable
    @BuiltValueField(wireName: r'total_busy')
    int get totalBusy;
    
        @nullable
    @BuiltValueField(wireName: r'hosts')
    BuiltList<BusyThreadCountMessageObjectHosts> get hosts;

    // Boilerplate code needed to wire-up generated code
    BusyThreadCountMessageObject._();

    factory BusyThreadCountMessageObject([updates(BusyThreadCountMessageObjectBuilder b)]) = _$BusyThreadCountMessageObject;
    static Serializer<BusyThreadCountMessageObject> get serializer => _$busyThreadCountMessageObjectSerializer;

}

