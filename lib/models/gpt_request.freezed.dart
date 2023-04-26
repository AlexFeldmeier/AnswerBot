// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gpt_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GptRequest _$GptRequestFromJson(Map<String, dynamic> json) {
  return _GptRequest.fromJson(json);
}

/// @nodoc
mixin _$GptRequest {
  List<Map<String, String>> get messages => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get user => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_tokens')
  int get maxTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GptRequestCopyWith<GptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GptRequestCopyWith<$Res> {
  factory $GptRequestCopyWith(
          GptRequest value, $Res Function(GptRequest) then) =
      _$GptRequestCopyWithImpl<$Res, GptRequest>;
  @useResult
  $Res call(
      {List<Map<String, String>> messages,
      String model,
      @JsonKey(includeIfNull: false) String? user,
      double temperature,
      @JsonKey(name: 'max_tokens') int maxTokens});
}

/// @nodoc
class _$GptRequestCopyWithImpl<$Res, $Val extends GptRequest>
    implements $GptRequestCopyWith<$Res> {
  _$GptRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? model = null,
    Object? user = freezed,
    Object? temperature = null,
    Object? maxTokens = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GptRequestCopyWith<$Res>
    implements $GptRequestCopyWith<$Res> {
  factory _$$_GptRequestCopyWith(
          _$_GptRequest value, $Res Function(_$_GptRequest) then) =
      __$$_GptRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Map<String, String>> messages,
      String model,
      @JsonKey(includeIfNull: false) String? user,
      double temperature,
      @JsonKey(name: 'max_tokens') int maxTokens});
}

/// @nodoc
class __$$_GptRequestCopyWithImpl<$Res>
    extends _$GptRequestCopyWithImpl<$Res, _$_GptRequest>
    implements _$$_GptRequestCopyWith<$Res> {
  __$$_GptRequestCopyWithImpl(
      _$_GptRequest _value, $Res Function(_$_GptRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? model = null,
    Object? user = freezed,
    Object? temperature = null,
    Object? maxTokens = null,
  }) {
    return _then(_$_GptRequest(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GptRequest implements _GptRequest {
  const _$_GptRequest(
      {required final List<Map<String, String>> messages,
      required this.model,
      @JsonKey(includeIfNull: false) this.user,
      this.temperature = 1,
      @JsonKey(name: 'max_tokens') this.maxTokens = 16})
      : _messages = messages;

  factory _$_GptRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GptRequestFromJson(json);

  final List<Map<String, String>> _messages;
  @override
  List<Map<String, String>> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final String model;
  @override
  @JsonKey(includeIfNull: false)
  final String? user;
  @override
  @JsonKey()
  final double temperature;
  @override
  @JsonKey(name: 'max_tokens')
  final int maxTokens;

  @override
  String toString() {
    return 'GptRequest(messages: $messages, model: $model, user: $user, temperature: $temperature, maxTokens: $maxTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GptRequest &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      model,
      user,
      temperature,
      maxTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GptRequestCopyWith<_$_GptRequest> get copyWith =>
      __$$_GptRequestCopyWithImpl<_$_GptRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GptRequestToJson(
      this,
    );
  }
}

abstract class _GptRequest implements GptRequest {
  const factory _GptRequest(
      {required final List<Map<String, String>> messages,
      required final String model,
      @JsonKey(includeIfNull: false) final String? user,
      final double temperature,
      @JsonKey(name: 'max_tokens') final int maxTokens}) = _$_GptRequest;

  factory _GptRequest.fromJson(Map<String, dynamic> json) =
      _$_GptRequest.fromJson;

  @override
  List<Map<String, String>> get messages;
  @override
  String get model;
  @override
  @JsonKey(includeIfNull: false)
  String? get user;
  @override
  double get temperature;
  @override
  @JsonKey(name: 'max_tokens')
  int get maxTokens;
  @override
  @JsonKey(ignore: true)
  _$$_GptRequestCopyWith<_$_GptRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
