            import 'package:time_machine/time_machine.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_user.g.dart';

abstract class SingleUser implements Built<SingleUser, SingleUserBuilder> {

    /* The object's primary key. This uniquely identifies the object in the system. */
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    /* The user' login name. Must be unique */
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;
    /* The UTC date and time that the object was created. */
        @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;
    /* The UTC date and time that the object was last modified. */
        @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    SingleUser._();

    factory SingleUser([updates(SingleUserBuilder b)]) = _$SingleUser;
    static Serializer<SingleUser> get serializer => _$singleUserSerializer;

}

