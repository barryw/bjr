            import 'package:built_collection/built_collection.dart';
            import 'package:BJR/model/single_folder.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folder_array_message.g.dart';

abstract class FolderArrayMessage implements Built<FolderArrayMessage, FolderArrayMessageBuilder> {

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
    BuiltList<SingleFolder> get object;

    // Boilerplate code needed to wire-up generated code
    FolderArrayMessage._();

    factory FolderArrayMessage([updates(FolderArrayMessageBuilder b)]) = _$FolderArrayMessage;
    static Serializer<FolderArrayMessage> get serializer => _$folderArrayMessageSerializer;

}

