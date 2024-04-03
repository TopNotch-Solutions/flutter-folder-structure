import 'package:http/http.dart' as http;
import 'dart:convert';
class THttpHelper{

  THttpHelper._();

  static const String _baseUrl = 'https://.........';

  static Future<Map<String, dynamic>> get(String endpoinr) async{
    final response = await http.get(Uri.parse('$_baseUrl/$endpoinr'));
    return _handleRespons(response);
  }
  static Future<Map<String, dynamic>> post(String endpoinr, dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoinr'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data)
      );
    return _handleRespons(response);
  }
  static Future<Map<String, dynamic>> put(String endpoinr, dynamic data) async{
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoinr'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data)
      );
    return _handleRespons(response);
  }
  static Future<Map<String, dynamic>> delete(String endpoinr) async{
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoinr'));
    return _handleRespons(response);
  }
  static Future<Map<String, dynamic>> _handleRespons(http.Response response) async{
   if(response.statusCode ==200){
    return json.decode(response.body);
   }else{
    throw Exception('Failed to load data');
   }
  }
}