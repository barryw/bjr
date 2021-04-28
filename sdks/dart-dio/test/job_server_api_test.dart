//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/api.dart';
import 'package:BJR/api/job_server_api.dart';
import 'package:test/test.dart';


/// tests for JobServerApi
void main() {
  final instance = BJR().getJobServerApi();

  group(JobServerApi, () {
    // Retrieve the count of busy workers across worker pods/nodes
    //
    // Retrieve the count of busy workers across worker pods/nodes
    //
    //Future<BusyThreadCountMessage> getBusyThreadCount() async
    test('test getBusyThreadCount', () async {
      // TODO
    });

    // Quiesce a single worker pod/node
    //
    // Quiesce a single worker pod/node
    //
    //Future<GenericMessage> quiesceNode(String host) async
    test('test quiesceNode', () async {
      // TODO
    });

    // List of recent jobs
    //
    // Get a list of the most recently run jobs
    //
    //Future<JobArrayMessage> recentJobs({ int count }) async
    test('test recentJobs', () async {
      // TODO
    });

    // Job statistics by day
    //
    // Get daily job statistics
    //
    //Future<JobStatMessage> statsByDay({ String startDate, String endDate, int perPage, int page, String timezone }) async
    test('test statsByDay', () async {
      // TODO
    });

    // Job statistics by hour
    //
    // Get hourly job statistics for the day
    //
    //Future<JobStatMessage> statsByHour({ String startDate, String endDate, int perPage, int page, String timezone }) async
    test('test statsByHour', () async {
      // TODO
    });

    // Job statistics by minute
    //
    // Get minutely job statistics
    //
    //Future<JobStatMessage> statsByMinute({ String startDate, String endDate, int perPage, int page, String timezone }) async
    test('test statsByMinute', () async {
      // TODO
    });

    // Job statistics by week
    //
    // Get weekly job statistics
    //
    //Future<JobStatMessage> statsByWeek({ String startDate, String endDate, int perPage, int page, String timezone }) async
    test('test statsByWeek', () async {
      // TODO
    });

    // Todays Stats
    //
    // Get the high level job statistics for today
    //
    //Future<TodaysStatsMessage> todaysStats({ String timezone }) async
    test('test todaysStats', () async {
      // TODO
    });

    // List of upcoming jobs
    //
    // A list of jobs that are about to execute
    //
    //Future<JobArrayMessage> upcomingJobs({ int count }) async
    test('test upcomingJobs', () async {
      // TODO
    });

  });
}
