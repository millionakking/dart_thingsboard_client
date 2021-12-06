import 'dart:convert';

import 'package:thingsboard_client/src/model/validate_models.dart';

import '../../thingsboard_client.dart';

class ValidateService {
  final ThingsboardClient _tbClient;

  factory ValidateService(ThingsboardClient tbClient) {
    return ValidateService._internal(tbClient);
  }

  ValidateService._internal(this._tbClient);

  Future<int> SendSmsValidateCode(SendSMSRequest sendSMSRequest,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post('/api/validate/sendSMS',
        data: jsonEncode(sendSMSRequest),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data;
  }
}
