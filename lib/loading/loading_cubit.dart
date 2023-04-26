import 'package:AnswerBot/apis/gpt_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_cubit.freezed.dart';
part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit(String question) : super(const LoadingState.loading()) {
    _submitQuestion(question);
  }

  void _submitQuestion(String question) async {
    final gptApi = GptApi();
    String? answer;
    try {
      answer = await gptApi.submitQuestion(question);
      if (answer != null) {
        emit(LoadingState.complete(answer: answer));
      } else {
        emit(const LoadingState.error());
      }
    } catch (e) {
      emit(LoadingState.error(e: e));
    }
  }
}
