            import 'package:time_machine/time_machine.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_stat.g.dart';

abstract class JobStat implements Built<JobStat, JobStatBuilder> {

    /* The number of job runs in the period. */
        @nullable
    @BuiltValueField(wireName: r'runs')
    int get runs;
    /* The number of job runs that failed in the period. */
        @nullable
    @BuiltValueField(wireName: r'failed')
    int get failed;
    /* The number of jobs that executed in the period. */
        @nullable
    @BuiltValueField(wireName: r'job_count')
    int get jobCount;
    /* The average runtime in seconds of all jobs in the period. */
        @nullable
    @BuiltValueField(wireName: r'avg_runtime')
    double get avgRuntime;
    /* The max runtime in seconds of all jobs in the period. */
        @nullable
    @BuiltValueField(wireName: r'max_runtime')
    double get maxRuntime;
    /* The min runtime in seconds of all jobs in the period. */
        @nullable
    @BuiltValueField(wireName: r'min_runtime')
    double get minRuntime;
    /* The total number of jobs. */
        @nullable
    @BuiltValueField(wireName: r'total_jobs')
    int get totalJobs;
    /* Of the total number of jobs, this is how many were enabled. */
        @nullable
    @BuiltValueField(wireName: r'total_enabled')
    int get totalEnabled;
    /* The average job lag in seconds. */
        @nullable
    @BuiltValueField(wireName: r'avg_job_lag')
    double get avgJobLag;
    /* The maximum job lag in seconds. */
        @nullable
    @BuiltValueField(wireName: r'max_job_lag')
    int get maxJobLag;
    /* The minimum job lag in seconds. */
        @nullable
    @BuiltValueField(wireName: r'min_job_lag')
    int get minJobLag;
    /* The runtime period. */
        @nullable
    @BuiltValueField(wireName: r'period')
    String get period;
    /* The period start date. */
        @nullable
    @BuiltValueField(wireName: r'start_dt')
    OffsetDateTime get startDt;
    /* The period end date. */
        @nullable
    @BuiltValueField(wireName: r'end_dt')
    OffsetDateTime get endDt;
    /* The date the record was created. */
        @nullable
    @BuiltValueField(wireName: r'created_at')
    OffsetDateTime get createdAt;
    /* The date the record was last updated. */
        @nullable
    @BuiltValueField(wireName: r'updated_at')
    OffsetDateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    JobStat._();

    factory JobStat([updates(JobStatBuilder b)]) = _$JobStat;
    static Serializer<JobStat> get serializer => _$jobStatSerializer;

}

