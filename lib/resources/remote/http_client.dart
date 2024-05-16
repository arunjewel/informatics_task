import 'dart:io';

import 'package:http/http.dart' as http;

import '../../models/base_models/base_api_model.dart';
import '../../utils/constants/app_constants.dart';

class HttpClientRepo {
  Future<Object> postRequest({required String apiUrl, final postData}) async {
    try {
      final uri = Uri.parse(apiUrl).replace(queryParameters: postData);

      final resp = await http.post(
        uri,
      );

      if (200 == resp.statusCode) {
        return Success(response: resp.body, code: 200);
      } else {
        return Failure(
            code: USER_INVALID_RESPONSE, errorresponse: 'invalid Response');
      }
    } on HttpException {
      return Failure(code: NO_INTERNET, errorresponse: 'NO internet');
    } on FormatException {
      return Failure(code: INVALID_FORMAT, errorresponse: 'Invalid Format');
    } catch (err) {
      return Failure(code: UNKNOWN_ERROR, errorresponse: err.toString());
    }
  }
}
