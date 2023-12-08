import 'dart:developer';

import 'package:dio/dio.dart';
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
}