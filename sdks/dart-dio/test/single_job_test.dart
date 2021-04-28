//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/model/single_job.dart';
import 'package:test/test.dart';

// tests for SingleJob
void main() {
  final instance = SingleJobBuilder();
  // TODO add properties to the builder and call build()

  group(SingleJob, () {
    // The object's primary key. This uniquely identifies the object in the system.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // The name of the job.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The cron expression for the job.
    // String cron
    test('to test the property `cron`', () async {
      // TODO
    });

    // Whether the job is enabled or not.
    // bool enabled
    test('to test the property `enabled`', () async {
      // TODO
    });

    // The command that is executed when the job fires.
    // String command
    test('to test the property `command`', () async {
      // TODO
    });

    // The last time the job ran.
    // String lastRun
    test('to test the property `lastRun`', () async {
      // TODO
    });

    // The date and time of the job's next run.
    // OffsetDateTime nextRun
    test('to test the property `nextRun`', () async {
      // TODO
    });

    // Whether the last run of the job was successful.
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // Whether the job is currently running.
    // bool running
    test('to test the property `running`', () async {
      // TODO
    });

    // The timezone that the job will run in.
    // String timezone
    test('to test the property `timezone`', () async {
      // TODO
    });

    // An array of tags associated with the job.
    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // The UTC date and time that the object was created.
    // OffsetDateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The UTC date and time that the object was last modified.
    // OffsetDateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // This url will receive a POST request with details about all successful job runs.
    // String successCallback
    test('to test the property `successCallback`', () async {
      // TODO
    });

    // This url will receive a POST request with details about all unsuccessful job runs.
    // String failureCallback
    test('to test the property `failureCallback`', () async {
      // TODO
    });

    // The average runtime across all runs of this job.
    // double avgRunDuration
    test('to test the property `avgRunDuration`', () async {
      // TODO
    });

    // The maximum runtime across all runs of this job.
    // double maxRunDuration
    test('to test the property `maxRunDuration`', () async {
      // TODO
    });

    // The minimum runtime across all runs of this job.
    // double minRunDuration
    test('to test the property `minRunDuration`', () async {
      // TODO
    });

    // The average runtime trend across all runs of this job.
    // double avgRunDurationTrend
    test('to test the property `avgRunDurationTrend`', () async {
      // TODO
    });

    // The average job lag across all runs of this job.
    // double avgRunLag
    test('to test the property `avgRunLag`', () async {
      // TODO
    });

    // The maximum job lag across all runs of this job.
    // double maxRunLag
    test('to test the property `maxRunLag`', () async {
      // TODO
    });

    // The minimum job lag across all runs of this job.
    // double minRunLag
    test('to test the property `minRunLag`', () async {
      // TODO
    });

    // The average job lag trend across all runs of this job.
    // double avgRunLagTrend
    test('to test the property `avgRunLagTrend`', () async {
      // TODO
    });


  });

}
