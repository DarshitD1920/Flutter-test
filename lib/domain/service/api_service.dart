import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class APIService {
  Future<Response?> getAPICall(String url, Map<String, String>? headers) async {
    debugPrint(url);
    try {
      Response response;
      if (headers != null) {
        response = await http.get(Uri.parse(url), headers: headers);
      } else {
        response = await http.get(Uri.parse(url));
      }

      debugPrint(response.body);
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
