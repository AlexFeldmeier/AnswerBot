import 'package:AnswerBot/theme_constants.dart';
import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({Key? key, required this.answer}) : super(key: key);

  final String answer;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ThemeConstants.themedPush(context);
        return false;
      },
      child: GestureDetector(
        onTap: () => ThemeConstants.themedPush(context),
        child: ThemeConstants.rootGradientWidget(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                answer,
                style: ThemeConstants.comfortaaFont,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
