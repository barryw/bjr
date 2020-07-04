            import 'package:BJR/model/single_folder.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_folder_message.g.dart';

abstract class SingleFolderMessage implements Built<SingleFolderMessage, SingleFolderMessageBuilder> {

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
    SingleFolder get object;

    // Boilerplate code needed to wire-up generated code
    SingleFolderMessage._();

    factory SingleFolderMessage([updates(SingleFolderMessageBuilder b)]) = _$SingleFolderMessage;
    static Serializer<SingleFolderMessage> get serializer => _$singleFolderMessageSerializer;

}

