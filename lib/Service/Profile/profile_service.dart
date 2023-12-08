import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:medical_aesthetic_books/Constant/api_path.dart';
import 'package:medical_aesthetic_books/Utils/shared_preference_service.dart';

class ProfileService{
  static SharedPref sharedPref = SharedPref();
  static final _dio = Dio();

   Future<Map<String,dynamic>> getProfileApiCall() async {
    Response response;

    dynamic token = await sharedPref.getUserToken();
    //log(token.toString());

    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };

      response = await _dio.post(
        "${ApiPath.baseUrl}profile/personal-details",
      );
      
      if(response.statusCode ==200 || response.statusCode == 201){
        log('--------Response Profile : $response');
        return response.data;
      }
      else{
        log("Unexpected status code received. 200 or 201 expected.");
        return {"status" : false};
      }

      

      
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {"status": false};
    }
  }

  Future<Map<String, dynamic>> updateProfileApiCall(
      {required Map<String, dynamic> requestModel}) async {
    Response response;

    dynamic token = await sharedPref.getUserToken();
    //log(token.toString());

    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };

      response = await _dio.post("${ApiPath.baseUrl}profile/update",
          data: requestModel);

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('--------Response Update Profile : $response');
        return response.data;
      } else {
        log("Unexpected status code received. 200 or 201 expected.");
        return {"status": false};
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {"status": false};
    }
  }

  Future<Map<String, dynamic>> changePasswordApiCall({required Map<String, dynamic> requestModel}) async {
    Response response;

    dynamic token = await sharedPref.getUserToken();
    //log(token.toString());

    try {
      _dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };

      response = await _dio.post(
        "${ApiPath.baseUrl}profile/change-password",
        data: requestModel
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('--------Response Password : $response');
        return response.data;
      } else {
        log("Unexpected status code received. 200 or 201 expected.");
        return {"status": false};
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {"status": false};
    }
  }

  Future<Map> uplaodImageApiCall(
    String logoImagePath,
  ) async {
    Response response;
    var token = await SharedPref().getUserToken();
    try {
      // Create FormData
      FormData formData = FormData();

      // Append each image to the FormData
      _dio.options.headers = {"access-token": token};

      String fileName = logoImagePath.toString().split('/').last;

      formData.files.add(MapEntry(
        "profile_picture",
        await MultipartFile.fromFile(logoImagePath.toString(),
            filename: fileName, contentType: MediaType("images", "jpeg")),
      ));

      response = await _dio.post(
        "${ApiPath.baseUrl}profile/picture-upload",
        data: formData,
      );
      log("response from upload image $response");
      if (response.data['status'] == true) {
        return response.data;
      } else {
        return {'status' : false};
      }
    } catch (error) {
      log("Error while uploading image : $error");
      return {'status': false, "message": "Please check your internet connection"};
    }
  }
}