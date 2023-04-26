import 'dart:convert';

import 'package:AnswerBot/models/gpt_request.dart';
import 'package:http/http.dart' as http;

class GptApi {
  static const _baseUrl = 'https://api.openai.com/v1/chat/completions';

  Future<String?> submitQuestion(String question) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
    };
    final request = GptRequest(
      messages: [{'role': 'user', 'content': question}],
      model: 'gpt-3.5-turbo',
      temperature: 0.2,
      maxTokens: 50,
    );
    final jsonBody = json.encode(request.toJson());
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: headers,
      body: jsonBody,
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final message = responseData['choices'][0]['message']['content'];
      return message.toString().trim();
    } else {
      throw Exception('Failed to get chat response');
    }
  }
}
