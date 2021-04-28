//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/api.dart';
import 'package:BJR/api/jobs_api.dart';
import 'package:test/test.dart';


/// tests for JobsApi
void main() {
  final instance = BJR().getJobsApi();

  group(JobsApi, () {
    // Creates a job
    //
    // Creates a job
    //
    //Future<SingleJobMessage> createJob({ JobIn jobIn }) async
    test('test createJob', () async {
      // TODO
    });

    // Deletes a job
    //
    // Deletes a job
    //
    //Future<SingleJobMessage> deleteJob(int id) async
    test('test deleteJob', () async {
      // TODO
    });

    // Retrieves a single job
    //
    // Retrieves a single job
    //
    //Future<SingleJobMessage> getJob(int id) async
    test('test getJob', () async {
      // TODO
    });

    // Retrieve the runs for a job
    //
    // Retrieve the runs for a job
    //
    //Future<JobRunArrayMessage> getJobRuns(int id, { int perPage, int page, bool succeeded, String startDate, String endDate, String timezone }) async
    test('test getJobRuns', () async {
      // TODO
    });

    // Retrieves jobs
    //
    // Retrieves jobs
    //
    //Future<JobArrayMessage> getJobs({ String expression, String timezone, int perPage, int page }) async
    test('test getJobs', () async {
      // TODO
    });

    // Upcoming job occurrences
    //
    // Retrieves a list of upcoming occurrences for a job
    //
    //Future<OccurrenceMessage> jobOccurrences(int id, String endDate, { int perPage, int page, String timezone }) async
    test('test jobOccurrences', () async {
      // TODO
    });

    // Run a job now
    //
    // Queues a job to run now
    //
    //Future runJobNow(int id) async
    test('test runJobNow', () async {
      // TODO
    });

    // Updates a single job
    //
    // Updates a single job
    //
    //Future<SingleJobMessage> updateJob(int id, { JobIn jobIn }) async
    test('test updateJob', () async {
      // TODO
    });

  });
}
