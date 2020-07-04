        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_version.g.dart';

abstract class ServerVersion implements Built<ServerVersion, ServerVersionBuilder> {

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
    /* The BJR server version */
        @nullable
    @BuiltValueField(wireName: r'object')
    String get object;

    // Boilerplate code needed to wire-up generated code
    ServerVersion._();

    factory ServerVersion([updates(ServerVersionBuilder b)]) = _$ServerVersion;
    static Serializer<ServerVersion> get serializer => _$serverVersionSerializer;

}

