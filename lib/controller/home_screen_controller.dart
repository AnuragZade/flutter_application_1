
import 'package:flutter_application_1/model/user_model.dart';
import 'package:flutter_application_1/services/user_api_service.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  
  @override
  void onInit() {
    loadUsers();
    super.onInit();
  }

  List<dynamic> categories = [
    'All',
    'For Salaried Professionals',
    'For Businesses',
  ];
  List<dynamic> categoriesImages = [
    'assets/images/All.png',
    "assets/images/Personal.png",
    'assets/images/Business.png',
  ];

  RxList<UserModel> users = <UserModel>[].obs;
  RxBool isLoading = false.obs;

  void loadUsers() async {
    try {
      isLoading.value = true;
      users.value = await UserApiService.fetchUserData();
    } finally {
      isLoading.value = false;
    }
  }
}
