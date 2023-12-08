import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_aesthetic_books/Model/Profile/user_profile_model.dart';
import 'package:medical_aesthetic_books/Service/Profile/profile_service.dart';

class ProfileController extends GetxController{
  Rx<UserProfileModel> userProfileModel = UserProfileModel().obs;
  RxBool isGettingProfile = false.obs;
   RxBool isUploadingImage = false.obs;
  RxString coverImage = ''.obs;

  

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


   uplaodImage() async {
    try {
      isUploadingImage(true);
      var res =
          await _profileService.uplaodImageApiCall(coverImage.value.toString());
      if (res['status'] == true) {
        
       getProfileData();
      } else {}
      isUploadingImage(false);
    } catch (e) {
      //ToastWidget.errorToast(error: "$e");
      isUploadingImage(false);
    }
  }



  Future pickCoverImage() async {
    try {
      final image = await ImagePicker()
          .pickImage(source: ImageSource.gallery, imageQuality: 50);
      if (image != null) {
        coverImage.value = image.path;
        await uplaodImage();
      } else {
       
        Get.snackbar("Error", "Ohh! you cancel the photo pic");
      }
    } on PlatformException catch (e) {
      Get.snackbar("Error", e.toString());
      
    }
  }

 




  @override
  void onInit() {
    getProfileData();
    super.onInit();
  }
}