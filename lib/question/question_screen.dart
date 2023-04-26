import 'package:AnswerBot/loading/loading_screen.dart';
import 'package:AnswerBot/theme_constants.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ThemeConstants.rootGradientWidget(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    maxLength: 200,
                    controller: _textEditingController,
                    style: ThemeConstants.comfortaaFont,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.sentences,
                    onSubmitted: (value) => _submitQuestion(context),
                    maxLines: null,
                    decoration: const InputDecoration(
                      counter: SizedBox.shrink(),
                      hintText: 'Enter a question',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: _textEditingController,
                  child: const Icon(Icons.arrow_forward_rounded),
                  builder: (context, value, child) => IconButton(
                    onPressed: value.text.isNotEmpty ? () => _submitQuestion(context) : null,
                    icon: child!,
                    iconSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitQuestion(BuildContext context) {
    ThemeConstants.themedPush(context, LoadingScreen(question: _textEditingController.text));
  }
}
