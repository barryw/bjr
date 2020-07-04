            import 'package:BJR/model/busy_thread_count_message_object.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'busy_thread_count_message.g.dart';

abstract class BusyThreadCountMessage implements Built<BusyThreadCountMessage, BusyThreadCountMessageBuilder> {

    /* The status message returned from the API call. */
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    /* True if there was an error performing the API call. */
        @nullable
    @BuiltValueField(wireName: r'is_error')
    bool get isError;
    /* The type of object being returned. */
        @nullable
    @BuiltValueField(wireName: r'object_type')
    String get objectType;
    /* The HTTP status code returned. */
        @nullable
    @BuiltValueField(wireName: r'status_code')
    int get statusCode;
    
        @nullable
    @BuiltValueField(wireName: r'object')
    BusyThreadCountMessageObject get object;

    // Boilerplate code needed to wire-up generated code
    BusyThreadCountMessage._();

    factory BusyThreadCountMessage([updates(BusyThreadCountMessageBuilder b)]) = _$BusyThreadCountMessage;
    static Serializer<BusyThreadCountMessage> get serializer => _$busyThreadCountMessageSerializer;

}

