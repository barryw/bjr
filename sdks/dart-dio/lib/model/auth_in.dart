        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_in.g.dart';

abstract class AuthIn implements Built<AuthIn, AuthInBuilder> {

    /* The username of the user to authenticate as */
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;
    /* The password of the user to authenticate as */
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    // Boilerplate code needed to wire-up generated code
    AuthIn._();

    factory AuthIn([updates(AuthInBuilder b)]) = _$AuthIn;
    static Serializer<AuthIn> get serializer => _$authInSerializer;

}

