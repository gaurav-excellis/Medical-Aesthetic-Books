import 'dart:developer';

import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Model/Profile/user_profile_model.dart';
import 'package:medical_aesthetic_books/Service/Profile/profile_service.dart';

class ProfileController extends GetxController{
  Rx<UserProfileModel> userProfileModel = UserProfileModel().obs;
  RxBool isGettingProfile = false.obs;

  

  final ProfileService _profileService = ProfileService();

  void getProfileData() async{
    try {
      isGettingProfile(true);
      var response = await _profileService.getProfileApiCall();
      if(response["status"] == true){
        userProfileModel.value = UserProfileModel.fromJson(response);
      }
      else{
        userProfileModel.value = UserProfileModel();
      }
      isGettingProfile(false);
    } catch (e) {
      log("Error in getting profile data: $e");
      isGettingProfile(false);
    }
  }




  @override
  void onInit() {
    getProfileData();
    super.onInit();
  }
}