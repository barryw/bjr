            import 'package:BJR/model/todays_stats.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_stats_message.g.dart';

abstract class TodaysStatsMessage implements Built<TodaysStatsMessage, TodaysStatsMessageBuilder> {

    /* The status message returned from the API call. */
        @nullable
    @BuiltValueField(wireName: r'message')
    String get message;
    /* True if there was an error performing the API call. */
        @nullable
    @BuiltValueField(wireName: r'is_error')
    bool get isError;
    /* The type of object being returned. */
        @nullable
    @BuiltValueField(wireName: r'object_type')
    String get objectType;
    /* The HTTP status code returned. */
        @nullable
    @BuiltValueField(wireName: r'status_code')
    int get statusCode;
    
        @nullable
    @BuiltValueField(wireName: r'object')
    TodaysStats get object;

    // Boilerplate code needed to wire-up generated code
    TodaysStatsMessage._();

    factory TodaysStatsMessage([updates(TodaysStatsMessageBuilder b)]) = _$TodaysStatsMessage;
    static Serializer<TodaysStatsMessage> get serializer => _$todaysStatsMessageSerializer;

}

