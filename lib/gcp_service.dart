import 'package:http/http.dart' as http;

Future<List> fetchData(String inputText, String mainPrompt) async {
  var url = Uri.https('helloworld-25fw3da4la-uc.a.run.app', 'help', {
    'input': inputText,
    'main_prompt': mainPrompt
  });
  var response = await http.get(url);
  return [response.statusCode, response.body];
}
