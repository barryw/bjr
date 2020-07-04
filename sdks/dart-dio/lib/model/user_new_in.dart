        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_new_in.g.dart';

abstract class UserNewIn implements Built<UserNewIn, UserNewInBuilder> {

    /* The new user's username. Must be unique. */
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;
    /* The new user's password. */
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;
    /* The new user's password confirmation. Must match 'password'. */
        @nullable
    @BuiltValueField(wireName: r'password_confirmation')
    String get passwordConfirmation;

    // Boilerplate code needed to wire-up generated code
    UserNewIn._();

    factory UserNewIn([updates(UserNewInBuilder b)]) = _$UserNewIn;
    static Serializer<UserNewIn> get serializer => _$userNewInSerializer;

}

