        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_update_in.g.dart';

abstract class UserUpdateIn implements Built<UserUpdateIn, UserUpdateInBuilder> {

    /* The new user's password. */
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;
    /* The new user's password confirmation. Must match 'password'. */
        @nullable
    @BuiltValueField(wireName: r'password_confirmation')
    String get passwordConfirmation;

    // Boilerplate code needed to wire-up generated code
    UserUpdateIn._();

    factory UserUpdateIn([updates(UserUpdateInBuilder b)]) = _$UserUpdateIn;
    static Serializer<UserUpdateIn> get serializer => _$userUpdateInSerializer;

}

