// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gpt_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GptRequest _$$_GptRequestFromJson(Map<String, dynamic> json) =>
    _$_GptRequest(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      model: json['model'] as String,
      user: json['user'] as String?,
      temperature: (json['temperature'] as num?)?.toDouble() ?? 1,
      maxTokens: json['max_tokens'] as int? ?? 16,
    );

Map<String, dynamic> _$$_GptRequestToJson(_$_GptRequest instance) {
  final val = <String, dynamic>{
    'messages': instance.messages,
    'model': instance.model,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.user);
  val['temperature'] = instance.temperature;
  val['max_tokens'] = instance.maxTokens;
  return val;
}
