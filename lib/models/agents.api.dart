import 'dart:convert';
import 'package:valoran_app/models/agents.dart';
import 'package:http/http.dart' as http;

class AgentApi {
  static Future<List<Agent>> getAgent() async {
    var uri = Uri.https(
        'valorant-agents-maps-arsenal.p.rapidapi.com', '/agents/en-us');
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "valorant-agents-maps-arsenal.p.rapidapi.com",
      "X-RapidAPI-Key": "eae527850emsh28603834c084147p1f09e7jsn229de0310b6e"
    });
    // Map<String, dynamic> data =
    //     Map<String, dynamic>.from(json.decode(response.body));
    dynamic data = jsonDecode(response.body);

    return (data['agents'] as List<dynamic>)
        .map((e) => Agent.fromJson(e))
        .toList();
  }
}
