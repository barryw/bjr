        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_out.g.dart';

abstract class AuthOut implements Built<AuthOut, AuthOutBuilder> {

    /* The JWT authentication token. This must be passed in the Authorization header on subsequent requests. */
        @nullable
    @BuiltValueField(wireName: r'auth_token')
    String get authToken;
    /* The id of the authenticated user. */
        @nullable
    @BuiltValueField(wireName: r'user_id')
    int get userId;
    /* If authentication failed, this will contain the reason why. */
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    /* This will be true if the authentication was successful, and false if not. */
        @nullable
    @BuiltValueField(wireName: r'is_error')
    bool get isError;
    /* The HTTP status code returned. */
        @nullable
    @BuiltValueField(wireName: r'status_code')
    int get statusCode;

    // Boilerplate code needed to wire-up generated code
    AuthOut._();

    factory AuthOut([updates(AuthOutBuilder b)]) = _$AuthOut;
    static Serializer<AuthOut> get serializer => _$authOutSerializer;

}

