            import 'package:time_machine/time_machine.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_job_run.g.dart';

abstract class SingleJobRun implements Built<SingleJobRun, SingleJobRunBuilder> {

    /* The object's primary key. This uniquely identifies the object in the system. */
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    /* Whether the run was successful or not. */
        @nullable
    @BuiltValueField(wireName: r'success')
    bool get success;
    /* The return code that the command exited with. 0 means success. */
        @nullable
    @BuiltValueField(wireName: r'return_code')
    int get returnCode;
    /* If the run failed, the error message that was returned. */
        @nullable
    @BuiltValueField(wireName: r'error_message')
    String get errorMessage;
    /* The text written to STDOUT as part of the job. */
        @nullable
    @BuiltValueField(wireName: r'stdout')
    String get stdout;
    /* The text written to STDERR as part of the job. */
        @nullable
    @BuiltValueField(wireName: r'stderr')
    String get stderr;
    /* The date and time that the run started. */
        @nullable
    @BuiltValueField(wireName: r'start_time')
    OffsetDateTime get startTime;
    /* The date and time that the run ended. */
        @nullable
    @BuiltValueField(wireName: r'end_time')
    OffsetDateTime get endTime;
    /* The date and time that the job should have run. */
        @nullable
    @BuiltValueField(wireName: r'scheduled_start_time')
    OffsetDateTime get scheduledStartTime;
    /* The difference in seconds between when the job was scheduled to run and when it ran. */
        @nullable
    @BuiltValueField(wireName: r'schedule_diff_in_seconds')
    int get scheduleDiffInSeconds;
    /* The job that the run is associated with. */
        @nullable
    @BuiltValueField(wireName: r'job_id')
    int get jobId;
    /* True if the job was run manually as opposed to run on a schedule. */
        @nullable
    @BuiltValueField(wireName: r'is_manual')
    bool get isManual;
    /* The date and time that the run record was created in UTC. */
        @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;
    /* The date and time that the run record was last updated in UTC. */
        @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    SingleJobRun._();

    factory SingleJobRun([updates(SingleJobRunBuilder b)]) = _$SingleJobRun;
    static Serializer<SingleJobRun> get serializer => _$singleJobRunSerializer;

}

