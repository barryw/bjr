        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_stats.g.dart';

abstract class TodaysStats implements Built<TodaysStats, TodaysStatsBuilder> {

    /* The total number of jobs that are scheduled. */
        @nullable
    @BuiltValueField(wireName: r'total_jobs')
    int get totalJobs;
    /* The trend direction of total_jobs. */
        @nullable
    @BuiltValueField(wireName: r'total_jobs_trend')
    double get totalJobsTrend;
    /* The total number of jobs that are enabled. This will be a subset of total_jobs. */
        @nullable
    @BuiltValueField(wireName: r'enabled_jobs')
    int get enabledJobs;
    /* The trend direction of enabled_jobs. */
        @nullable
    @BuiltValueField(wireName: r'enabled_jobs_trend')
    double get enabledJobsTrend;
    /* The number of jobs that have been run today. */
        @nullable
    @BuiltValueField(wireName: r'run_jobs')
    int get runJobs;
    /* The trend direction of run_jobs. */
        @nullable
    @BuiltValueField(wireName: r'run_jobs_trend')
    double get runJobsTrend;
    /* The number of jobs that have failed today. */
        @nullable
    @BuiltValueField(wireName: r'failed_jobs')
    int get failedJobs;
    /* The trend direction of failed_jobs. */
        @nullable
    @BuiltValueField(wireName: r'failed_jobs_trend')
    double get failedJobsTrend;
    /* The average job run time. */
        @nullable
    @BuiltValueField(wireName: r'avg_job_runtime')
    double get avgJobRuntime;
    /* The trend direction of avg_job_runtime. */
        @nullable
    @BuiltValueField(wireName: r'avg_job_runtime_trend')
    double get avgJobRuntimeTrend;
    /* The max job run time. */
        @nullable
    @BuiltValueField(wireName: r'max_job_runtime')
    double get maxJobRuntime;
    /* The trend direction of max_job_runtime. */
        @nullable
    @BuiltValueField(wireName: r'max_job_runtime_trend')
    double get maxJobRuntimeTrend;
    /* The min job run time. */
        @nullable
    @BuiltValueField(wireName: r'min_job_runtime')
    double get minJobRuntime;
    /* The trend direction of min_job_runtime. */
        @nullable
    @BuiltValueField(wireName: r'min_job_runtime_trend')
    double get minJobRuntimeTrend;
    /* The average job lag. */
        @nullable
    @BuiltValueField(wireName: r'avg_job_lag')
    double get avgJobLag;
    /* The trend direction of avg_job_lag. */
        @nullable
    @BuiltValueField(wireName: r'avg_job_lag_trend')
    double get avgJobLagTrend;
    /* The max job lag. */
        @nullable
    @BuiltValueField(wireName: r'max_job_lag')
    double get maxJobLag;
    /* The trend direction of max_job_lag. */
        @nullable
    @BuiltValueField(wireName: r'max_job_lag_trend')
    double get maxJobLagTrend;
    /* The min job lag. */
        @nullable
    @BuiltValueField(wireName: r'min_job_lag')
    double get minJobLag;
    /* The trend direction of min_job_lag. */
        @nullable
    @BuiltValueField(wireName: r'min_job_lag_trend')
    double get minJobLagTrend;

    // Boilerplate code needed to wire-up generated code
    TodaysStats._();

    factory TodaysStats([updates(TodaysStatsBuilder b)]) = _$TodaysStats;
    static Serializer<TodaysStats> get serializer => _$todaysStatsSerializer;

}

