import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:medical_aesthetic_books/Constant/api_path.dart';

class AuthService {
  Future<Map> registerApiCall(
      {required Map<String, dynamic> requestModel}) async {
    Response response;
    final dio = Dio();

    try {
      dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      response =
          await dio.post("${ApiPath.baseUrl}register", data: requestModel);

      log('--------Response Registration : $response');
      if(response.statusCode == 200 || response.statusCode ==201){
        return response.data;
      }
      else{
        return {"status": "false"};
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {
        "status": "Something went wrong",
        "error": "Something went wrong"
      };
    }
  }

  Future<Map> loginApiCall(
      {required Map<String, dynamic> requestModel}) async {
    Response response;
    final dio = Dio();

    try {
      dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      response =
          await dio.post("${ApiPath.baseUrl}login", data: requestModel);

      log('--------Response Registration : $response');
      if(response.statusCode == 200 || response.statusCode ==201){
        return response.data;
      }
      else{
        return {"status": "false"};
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {
        "status": "Something went wrong",
        "error": "Something went wrong"
      };
    }
  }

  Future<Map> forgetPasswordApiCall(
      {required Map<String, dynamic> requestModel}) async {
    Response response;
    final dio = Dio();

    try {
      dio.options.headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      response =
          await dio.post("${ApiPath.baseUrl}forgot-password", data: requestModel);

      log('--------Response Registration : $response');
      if(response.statusCode == 200 || response.statusCode ==201){
        return response.data;
      }
      else{
        return {"status": "false"};
      }
    } catch (error, stacktrace) {
      log("Exception occurred: $error stackTrace: $stacktrace");
      return {
        "status": "Something went wrong",
        "error": "Something went wrong"
      };
    }
  }
}
