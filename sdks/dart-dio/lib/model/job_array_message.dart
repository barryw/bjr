            import 'package:built_collection/built_collection.dart';
            import 'package:BJR/model/single_job.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_array_message.g.dart';

abstract class JobArrayMessage implements Built<JobArrayMessage, JobArrayMessageBuilder> {

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
    BuiltList<SingleJob> get object;

    // Boilerplate code needed to wire-up generated code
    JobArrayMessage._();

    factory JobArrayMessage([updates(JobArrayMessageBuilder b)]) = _$JobArrayMessage;
    static Serializer<JobArrayMessage> get serializer => _$jobArrayMessageSerializer;

}

