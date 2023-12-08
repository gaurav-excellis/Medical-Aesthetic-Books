import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Service/Profile/profile_service.dart';

class PasswordController extends GetxController {
  Rx<TextEditingController> oldPassController = TextEditingController().obs;
  Rx<TextEditingController> newPassController = TextEditingController().obs;
  Rx<TextEditingController> confirmPassController = TextEditingController().obs;
  RxBool oldPassHidden = true.obs;
  RxBool newPassHidden = true.obs;
  RxBool confirmPassHidden = true.obs;
  RxBool isChanging = false.obs;

  final ProfileService _profileService = ProfileService();

  validateChangePassFields(){
    if(oldPassController.value.text.length < 8){
      log("Invalid old pass");
      Get.snackbar("Error", "Old Password was not less than 8 characters");
    }
    else if (newPassController.value.text.length < 8) {
      log("Invalid new pass");
      Get.snackbar("Error", "New Password can't be less than 8 characters");
    }
    else if (confirmPassController.value.text.length < 8) {
      log("Invalid confirm pass");
      Get.snackbar("Error", "Confirm Password can't be less than 8 characters");
    }
    else if (confirmPassController.value.text != newPassController.value.text) {
      log("Pass mismatch");
      Get.snackbar("Error", "Confirm Password doesn't match with new Password");
    }
    else{
      changePassword();
    }
  }

  void changePassword() async {
    try {
      isChanging(true);
      Map<String, dynamic> requestModel = {
        "old_password" : oldPassController.value.text.toString().trim(),
        "password" : newPassController.value.text.toString().trim(),
        "confirm_password" : confirmPassController.value.text.toString().trim()
      };
       var response = await _profileService.changePasswordApiCall(
          requestModel: requestModel);
      if (response["status"] == true) {
        Get.snackbar("Success", response["message"]);
        Get.key.currentState?.pop();

      } else {
        Get.snackbar("Error", response["error"]);
      }
      isChanging(false);
    } catch (e) {
      log("Error in getting profile data: $e");
      isChanging(false);
    }
  }

 
}
