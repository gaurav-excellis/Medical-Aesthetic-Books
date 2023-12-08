import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Controller/Profile/profile_controller.dart';
import 'package:medical_aesthetic_books/Service/Profile/profile_service.dart';

class UpdateProfileController extends GetxController {
  Rx<TextEditingController> firstNameController = TextEditingController().obs;
  Rx<TextEditingController> lastNameController = TextEditingController().obs;
  Rx<TextEditingController> phoneController = TextEditingController().obs;

  RxBool isUpdating = false.obs;

  final ProfileService _profileService = ProfileService();
  final profileController = Get.put(ProfileController());

  validateUpdateProfileFields() {
    if (firstNameController.value.text.length < 3) {
      log("Invalid name");
      Get.snackbar("Error", "Invalid first name");
    } else if (phoneController.value.text.length < 8) {
      log("Invalid phone");
      Get.snackbar("Error", "Invalid Phone");
    } else {
      updateProfile();
    }
  }

  void updateProfile() async {
    try {
      isUpdating(true);
      Map<String, dynamic> requestModel = {
        "name": "${firstNameController.value.text.toString()} ${lastNameController.value.text.toString()}",
        "phone": phoneController.value.text.toString(),
       
      };
      var response = await _profileService.updateProfileApiCall(
          requestModel: requestModel);
      if (response["status"] == true) {
        profileController.getProfileData();
        Get.snackbar("Success", response["message"]);
        Get.key.currentState?.pop();
      } else {
        Get.snackbar("Error", response["error"]);
      }
      isUpdating(false);
    } catch (e) {
      log("Error in getting profile data: $e");
      isUpdating(false);
    }
  }

  void setDataToTextControllers(){
    var name = profileController.userProfileModel.value.data?.name ?? " ";
    var firstName = name, lastName = "";
     if(name.split(" ").length > 1){
      firstName = name.split(" ")[0];
     lastName = name.split(" ")[1];
     }
     
    firstNameController.value.text = firstName;
    lastNameController.value.text = lastName;
    phoneController.value.text = profileController.userProfileModel.value.data?.phone ?? "";
  }

  @override
  void onInit() {
    setDataToTextControllers();
    super.onInit();
  }
}
