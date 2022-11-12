import 'dart:convert';
import 'dart:developer';

import 'package:f_app/application/constants.dart';
import 'package:f_app/domain/model/account_model.dart';
import 'package:f_app/domain/service/api_urls.dart';
import 'package:http/http.dart';

import '../../../application/strings.dart';
import '../../../domain/service/api_service.dart';

class SplashRepository {
  Future<AccountResponse?> getAccountDetails() async {
    String url = APIUrls.getAccountsUrl;
    final Map<String, String> headers = {
      "iristelx-api-key": apiKey,
    };
    Response? response = await APIService().getAPICall(url, headers);

    var responseData = json.decode(response!.body);
    if (response.statusCode == 200) {
      return AccountResponse.fromJson(responseData);
    } else if (responseData.containsKey('message')) {
      String errorMessage = responseData['message'];
      log(errorMessage);
    } else {
      log(unableToConectToServer);
    }
    return null;
  }
}
