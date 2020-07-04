        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_in.g.dart';

abstract class JobIn implements Built<JobIn, JobInBuilder> {

    /* The new name of the job. Must be unique. */
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* The new cron expression for the job. */
        @nullable
    @BuiltValueField(wireName: r'cron')
    String get cron;
    /* The command to run when the job fires. */
        @nullable
    @BuiltValueField(wireName: r'command')
    String get command;
    /* The timezone to run the job in. */
        @nullable
    @BuiltValueField(wireName: r'timezone')
    String get timezone;
    /* Is the job enabled by default? */
        @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;
    /* A comma-separated list of tags to associate with this job. You can search jobs by their tags. */
        @nullable
    @BuiltValueField(wireName: r'tags')
    String get tags;
    /* Specify the url to receive a POST callback for all successful runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'success_callback')
    String get successCallback;
    /* Specify the url to receive a POST callback for all unsuccessful runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'failure_callback')
    String get failureCallback;

    // Boilerplate code needed to wire-up generated code
    JobIn._();

    factory JobIn([updates(JobInBuilder b)]) = _$JobIn;
    static Serializer<JobIn> get serializer => _$jobInSerializer;

}

