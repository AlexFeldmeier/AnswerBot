part of 'loading_cubit.dart';

@freezed
class LoadingState with _$LoadingState {
  const factory LoadingState.loading() = _Loading;
  const factory LoadingState.complete({required String answer}) = _Complete;
  const factory LoadingState.error({Object? e}) = _Error;
}
