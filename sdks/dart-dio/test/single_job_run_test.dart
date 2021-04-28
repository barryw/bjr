//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:BJR/model/single_job_run.dart';
import 'package:test/test.dart';

// tests for SingleJobRun
void main() {
  final instance = SingleJobRunBuilder();
  // TODO add properties to the builder and call build()

  group(SingleJobRun, () {
    // The object's primary key. This uniquely identifies the object in the system.
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // Whether the run was successful or not.
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // The return code that the command exited with. 0 means success.
    // int returnCode
    test('to test the property `returnCode`', () async {
      // TODO
    });

    // If the run failed, the error message that was returned.
    // String errorMessage
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // The text written to STDOUT as part of the job.
    // String stdout
    test('to test the property `stdout`', () async {
      // TODO
    });

    // The text written to STDERR as part of the job.
    // String stderr
    test('to test the property `stderr`', () async {
      // TODO
    });

    // The date and time that the run started.
    // OffsetDateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // The date and time that the run ended.
    // OffsetDateTime endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // The date and time that the job should have run.
    // OffsetDateTime scheduledStartTime
    test('to test the property `scheduledStartTime`', () async {
      // TODO
    });

    // The difference in seconds between when the job was scheduled to run and when it ran.
    // int scheduleDiffInSeconds
    test('to test the property `scheduleDiffInSeconds`', () async {
      // TODO
    });

    // The job that the run is associated with.
    // int jobId
    test('to test the property `jobId`', () async {
      // TODO
    });

    // True if the job was run manually as opposed to run on a schedule.
    // bool isManual
    test('to test the property `isManual`', () async {
      // TODO
    });

    // The date and time that the run record was created in UTC.
    // OffsetDateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The date and time that the run record was last updated in UTC.
    // OffsetDateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });


  });

}
