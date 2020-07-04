            import 'package:built_collection/built_collection.dart';
            import 'package:time_machine/time_machine.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'occurrence_message.g.dart';

abstract class OccurrenceMessage implements Built<OccurrenceMessage, OccurrenceMessageBuilder> {

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
    BuiltList<OffsetDateTime> get object;

    // Boilerplate code needed to wire-up generated code
    OccurrenceMessage._();

    factory OccurrenceMessage([updates(OccurrenceMessageBuilder b)]) = _$OccurrenceMessage;
    static Serializer<OccurrenceMessage> get serializer => _$occurrenceMessageSerializer;

}

