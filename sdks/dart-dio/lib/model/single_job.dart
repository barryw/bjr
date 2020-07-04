            import 'package:built_collection/built_collection.dart';
            import 'package:time_machine/time_machine.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'single_job.g.dart';

abstract class SingleJob implements Built<SingleJob, SingleJobBuilder> {

    /* The object's primary key. This uniquely identifies the object in the system. */
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    /* The name of the job. */
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* The cron expression for the job. */
        @nullable
    @BuiltValueField(wireName: r'cron')
    String get cron;
    /* Whether the job is enabled or not. */
        @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;
    /* The command that is executed when the job fires. */
        @nullable
    @BuiltValueField(wireName: r'command')
    String get command;
    /* The last time the job ran. */
        @nullable
    @BuiltValueField(wireName: r'last_run')
    String get lastRun;
    /* The date and time of the job's next run. */
        @nullable
    @BuiltValueField(wireName: r'next_run')
    OffsetDateTime get nextRun;
    /* Whether the last run of the job was successful. */
        @nullable
    @BuiltValueField(wireName: r'success')
    bool get success;
    /* Whether the job is currently running. */
        @nullable
    @BuiltValueField(wireName: r'running')
    bool get running;
    /* The timezone that the job will run in. */
        @nullable
    @BuiltValueField(wireName: r'timezone')
    String get timezone;
    /* An array of tags associated with the job. */
        @nullable
    @BuiltValueField(wireName: r'tags')
    BuiltList<String> get tags;
    /* The UTC date and time that the object was created. */
        @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;
    /* The UTC date and time that the object was last modified. */
        @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;
    /* This url will receive a POST request with details about all successful job runs. */
        @nullable
    @BuiltValueField(wireName: r'success_callback')
    String get successCallback;
    /* This url will receive a POST request with details about all unsuccessful job runs. */
        @nullable
    @BuiltValueField(wireName: r'failure_callback')
    String get failureCallback;
    /* The average runtime across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'avg_run_duration')
    double get avgRunDuration;
    /* The maximum runtime across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'max_run_duration')
    double get maxRunDuration;
    /* The minimum runtime across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'min_run_duration')
    double get minRunDuration;
    /* The average runtime trend across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'avg_run_duration_trend')
    double get avgRunDurationTrend;
    /* The average job lag across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'avg_run_lag')
    double get avgRunLag;
    /* The maximum job lag across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'max_run_lag')
    double get maxRunLag;
    /* The minimum job lag across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'min_run_lag')
    double get minRunLag;
    /* The average job lag trend across all runs of this job. */
        @nullable
    @BuiltValueField(wireName: r'avg_run_lag_trend')
    double get avgRunLagTrend;

    // Boilerplate code needed to wire-up generated code
    SingleJob._();

    factory SingleJob([updates(SingleJobBuilder b)]) = _$SingleJob;
    static Serializer<SingleJob> get serializer => _$singleJobSerializer;

}

