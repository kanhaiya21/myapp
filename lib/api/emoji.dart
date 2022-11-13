import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class QuizApi {
  Future<dynamic> getQuestions() async {
    String url = "https://marcconrad.com/uob/smile/api.php?out=json";
    try {
      final response = await http.get(
        Uri.parse(url),
      );
      log("Fetch Data ${response.body}}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      log("login => $e");
      return false;
    }
  }
}
