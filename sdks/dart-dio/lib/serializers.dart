//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:time_machine/time_machine.dart';
import 'package:BJR/local_date_serializer.dart';
import 'package:BJR/model/auth_in.dart';
import 'package:BJR/model/auth_out.dart';
import 'package:BJR/model/busy_thread_count_message.dart';
import 'package:BJR/model/busy_thread_count_message_object.dart';
import 'package:BJR/model/busy_thread_count_message_object_hosts.dart';
import 'package:BJR/model/folder_array_message.dart';
import 'package:BJR/model/generic_message.dart';
import 'package:BJR/model/job_array_message.dart';
import 'package:BJR/model/job_in.dart';
import 'package:BJR/model/job_run_array_message.dart';
import 'package:BJR/model/job_stat.dart';
import 'package:BJR/model/job_stat_message.dart';
import 'package:BJR/model/occurrence_message.dart';
import 'package:BJR/model/server_version.dart';
import 'package:BJR/model/single_folder.dart';
import 'package:BJR/model/single_folder_message.dart';
import 'package:BJR/model/single_job.dart';
import 'package:BJR/model/single_job_message.dart';
import 'package:BJR/model/single_job_run.dart';
import 'package:BJR/model/single_job_run_message.dart';
import 'package:BJR/model/single_user.dart';
import 'package:BJR/model/single_user_message.dart';
import 'package:BJR/model/tag.dart';
import 'package:BJR/model/tag_message.dart';
import 'package:BJR/model/timezone_message.dart';
import 'package:BJR/model/todays_stats.dart';
import 'package:BJR/model/todays_stats_message.dart';
import 'package:BJR/model/user_array_message.dart';
import 'package:BJR/model/user_new_in.dart';
import 'package:BJR/model/user_update_in.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AuthIn,
  AuthOut,
  BusyThreadCountMessage,
  BusyThreadCountMessageObject,
  BusyThreadCountMessageObjectHosts,
  FolderArrayMessage,
  GenericMessage,
  JobArrayMessage,
  JobIn,
  JobRunArrayMessage,
  JobStat,
  JobStatMessage,
  OccurrenceMessage,
  ServerVersion,
  SingleFolder,
  SingleFolderMessage,
  SingleJob,
  SingleJobMessage,
  SingleJobRun,
  SingleJobRunMessage,
  SingleUser,
  SingleUserMessage,
  Tag,
  TagMessage,
  TimezoneMessage,
  TodaysStats,
  TodaysStatsMessage,
  UserArrayMessage,
  UserNewIn,
  UserUpdateIn,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OffsetDateSerializer())
      ..add(const OffsetDateTimeSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
