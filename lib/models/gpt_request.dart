import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpt_request.freezed.dart';
part 'gpt_request.g.dart';

@freezed
class GptRequest with _$GptRequest {
  const factory GptRequest({
    required List<Map<String, String>> messages,
    required String model,
    @JsonKey(includeIfNull: false) String? user,
    @Default(1) double temperature,
    @Default(16) @JsonKey(name: 'max_tokens') int maxTokens,
  }) = _GptRequest;

  factory GptRequest.fromJson(Map<String, Object?> json) => _$GptRequestFromJson(json);
}
