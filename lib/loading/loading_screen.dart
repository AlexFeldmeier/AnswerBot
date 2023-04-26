import 'package:AnswerBot/answer/answer_screen.dart';
import 'package:AnswerBot/loading/loading_cubit.dart';
import 'package:AnswerBot/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key, required this.question}) : super(key: key);

  final String question;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ThemeConstants.themedPush(context);
        return false;
      },
      child: ThemeConstants.rootGradientWidget(
        child: Center(
          child: BlocProvider(
            create: (_) => LoadingCubit(question),
            child: BlocListener<LoadingCubit, LoadingState>(
              listener: (context, state) {
                state.whenOrNull(
                  complete: (answer) => ThemeConstants.themedPush(context, AnswerScreen(answer: answer)),
                  error: (e) => ThemeConstants.themedPush(
                      context, AnswerScreen(answer: e?.toString() ?? 'An error has occurred')),
                );
              },
              child: const CircularProgressIndicator(
                color: Colors.white60,
                strokeWidth: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
