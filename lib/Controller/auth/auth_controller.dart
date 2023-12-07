import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/login_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/View/home_screen.dart';
import 'package:medical_aesthetic_books/Service/auth/auth_service.dart';
import 'package:medical_aesthetic_books/Utils/shared_preference_service.dart';

class AuthController extends GetxController {
  Rx<TextEditingController> emailAddressController =
      TextEditingController().obs;
  Rx<TextEditingController> fullNameController = TextEditingController().obs;
  Rx<TextEditingController> mobileController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  RxBool isPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;

  RxBool isRegistering = false.obs;
  RxBool isLoggingIn = false.obs;
  RxBool isForgetting = false.obs;
  final AuthService _authService = AuthService();

  validateRegisterForm() {
    if (!emailAddressController.value.text.toString().contains("@")) {
      log("invalid email");
      Get.snackbar("Error", "Invalid Email");
    } else if (fullNameController.value.text.length < 3) {
      log("invalid name");
      Get.snackbar("Error", "Invalid Name");
    } else if (mobileController.value.text.length < 8) {
      log("invalid phone");
      Get.snackbar("Error", "Invalid Phone Number");
    } else if (passwordController.value.text.length < 8) {
      log("invalid password");
      Get.snackbar("Error", "Password can't be less than 8 characters");
    } else if (confirmPasswordController.value.text.length < 8) {
      log("invalid confirm password");
      Get.snackbar("Error", "Confirm password can't be less than 8 characters");
    } else if (passwordController.value.text !=
        confirmPasswordController.value.text) {
      log("password mismatch");
      Get.snackbar("Error", "Password and confirm password must be same");
    } else {
      registerUser();
    }
  }

  void registerUser() async {
    try {
      isRegistering(true);
      Map<String, dynamic> requestModel = {
        "name": fullNameController.value.text,
        "email": emailAddressController.value.text,
        "password": passwordController.value.text,
        "confirm_password": confirmPasswordController.value.text,
        "phone": mobileController.value.text
      };
      var res = await _authService.registerApiCall(requestModel: requestModel);
      if (res['status'] == true) {
        await SharedPref()
            .setUserToken(userToken: res["data"]["auth_token"].toString());
        await SharedPref()
            .setUserID(userID: res["data"]["user"]["id"].toString());
        await SharedPref().setIsFirstTime(isFirstTime: false);

        Get.off(() => const HomeScreen());
      } else {
        Get.snackbar("Error", res['error'].toString());
      }

      isRegistering(false);
      clearRegisterControllers();
    } catch (e) {
      isRegistering(false);
      log("Exception occured while registering. $e");
    }
  }

  void clearRegisterControllers() {
    emailAddressController.value.clear();
    fullNameController.value.clear();
    mobileController.value.clear();
    passwordController.value.clear();
    confirmPasswordController.value.clear();
  }

  validateLoginForm() {
    if (!emailAddressController.value.text.toString().contains("@")) {
      log("invalid email");
      Get.snackbar("Error", "Invalid Email");
    } else if (passwordController.value.text.length < 8) {
      log("invalid password");
      Get.snackbar("Error", "Password can't be less than 8 characters");
    } else {
      loginUser();
    }
  }

  void loginUser() async {
    try {
      isLoggingIn(true);
      Map<String, dynamic> requestModel = {
        "email": emailAddressController.value.text,
        "password": passwordController.value.text,
      };
      var res = await _authService.loginApiCall(requestModel: requestModel);
      if (res['status'] == true) {
        await SharedPref()
            .setUserToken(userToken: res["data"]["auth_token"].toString());
        await SharedPref()
            .setUserID(userID: res["data"]["user"]["id"].toString());
        await SharedPref().setIsFirstTime(isFirstTime: false);

        Get.off(() => const HomeScreen());
      } else {
        Get.snackbar("Error", res['error'].toString());
      }

      isLoggingIn(false);
      clearLoginControllers();
    } catch (e) {
      isLoggingIn(false);
      log("Exception occured while registering. $e");
    }
  }

  void clearLoginControllers() {
    emailAddressController.value.clear();
    passwordController.value.clear();
  }

  Future<bool> forgetPassword() async {
    if (!emailAddressController.value.text.toString().contains("@")) {
      log("invalid email");
      Get.snackbar("Error", "Invalid Email");
      return false;
    }
    try {
      isForgetting(true);
      Map<String, dynamic> requestModel = {
        "email": emailAddressController.value.text,
      };
      var res =
          await _authService.forgetPasswordApiCall(requestModel: requestModel);
      if (res['status'] == true) {
        isForgetting(false);
        Get.snackbar("Success", res['message'].toString());
        Get.key.currentState?.pop();

        return true;
      } else {
        Get.snackbar("Error", res['error'].toString());
        isForgetting(false);
        return false;
      }
    } catch (e) {
      isForgetting(false);
      log("Exception occured while registering. $e");
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
