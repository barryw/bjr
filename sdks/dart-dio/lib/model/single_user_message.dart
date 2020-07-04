            import 'package:BJR/model/single_user.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_user_message.g.dart';

abstract class SingleUserMessage implements Built<SingleUserMessage, SingleUserMessageBuilder> {

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
    SingleUser get object;

    // Boilerplate code needed to wire-up generated code
    SingleUserMessage._();

    factory SingleUserMessage([updates(SingleUserMessageBuilder b)]) = _$SingleUserMessage;
    static Serializer<SingleUserMessage> get serializer => _$singleUserMessageSerializer;

}

