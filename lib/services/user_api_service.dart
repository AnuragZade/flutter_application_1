import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/model/user_model.dart';

class UserApiService {
  static Future<List<UserModel>> fetchUserData() async {
    final userData = await rootBundle.loadString('assets/API_RESPONSE.txt');
    final Map<String, dynamic> jsonData = json.decode(userData);

    final List dataList =
        jsonData['data']['getUserDiscountCodes']['data'] ?? [];

    return dataList.map((e) => UserModel.fromJson(e)).toList();
  }
}
