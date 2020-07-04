        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_folder.g.dart';

abstract class SingleFolder implements Built<SingleFolder, SingleFolderBuilder> {

    /* The object's primary key. This uniquely identifies the object in the system. */
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    /* The folder's name. Must be unique. */
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* The search expression used to determine which jobs appear in this folder. */
        @nullable
    @BuiltValueField(wireName: r'expression')
    String get expression;
    /* The number of jobs that match the folder's expression. */
        @nullable
    @BuiltValueField(wireName: r'job_count')
    int get jobCount;

    // Boilerplate code needed to wire-up generated code
    SingleFolder._();

    factory SingleFolder([updates(SingleFolderBuilder b)]) = _$SingleFolder;
    static Serializer<SingleFolder> get serializer => _$singleFolderSerializer;

}

