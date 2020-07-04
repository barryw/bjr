library serializers;

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

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AuthIn)]),
() => new ListBuilder<AuthIn>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AuthOut)]),
() => new ListBuilder<AuthOut>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BusyThreadCountMessage)]),
() => new ListBuilder<BusyThreadCountMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BusyThreadCountMessageObject)]),
() => new ListBuilder<BusyThreadCountMessageObject>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BusyThreadCountMessageObjectHosts)]),
() => new ListBuilder<BusyThreadCountMessageObjectHosts>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FolderArrayMessage)]),
() => new ListBuilder<FolderArrayMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(GenericMessage)]),
() => new ListBuilder<GenericMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobArrayMessage)]),
() => new ListBuilder<JobArrayMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobIn)]),
() => new ListBuilder<JobIn>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobRunArrayMessage)]),
() => new ListBuilder<JobRunArrayMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobStat)]),
() => new ListBuilder<JobStat>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobStatMessage)]),
() => new ListBuilder<JobStatMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OccurrenceMessage)]),
() => new ListBuilder<OccurrenceMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServerVersion)]),
() => new ListBuilder<ServerVersion>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleFolder)]),
() => new ListBuilder<SingleFolder>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleFolderMessage)]),
() => new ListBuilder<SingleFolderMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleJob)]),
() => new ListBuilder<SingleJob>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleJobMessage)]),
() => new ListBuilder<SingleJobMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleJobRun)]),
() => new ListBuilder<SingleJobRun>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleJobRunMessage)]),
() => new ListBuilder<SingleJobRunMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleUser)]),
() => new ListBuilder<SingleUser>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SingleUserMessage)]),
() => new ListBuilder<SingleUserMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Tag)]),
() => new ListBuilder<Tag>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TagMessage)]),
() => new ListBuilder<TagMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TimezoneMessage)]),
() => new ListBuilder<TimezoneMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TodaysStats)]),
() => new ListBuilder<TodaysStats>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TodaysStatsMessage)]),
() => new ListBuilder<TodaysStatsMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserArrayMessage)]),
() => new ListBuilder<UserArrayMessage>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserNewIn)]),
() => new ListBuilder<UserNewIn>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserUpdateIn)]),
() => new ListBuilder<UserUpdateIn>())

).build();

Serializers standardSerializers =
(serializers.toBuilder()
..add(OffsetDateSerializer())
..add(OffsetDateTimeSerializer())
..addPlugin(StandardJsonPlugin())).build();
