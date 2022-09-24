import 'package:dio/dio.dart';
import 'package:emelat/LoginModel.dart';
import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier{
  LoginModel?loginModel;
  Map<String,dynamic>? dataprov;
  
  Future<dynamic>login(
      String?email,
      String?password
      )async{
    var dio=Dio();
    dio.options.headers={
  "lang":"en",
  "content-Type":"application/json",
  };
    dataprov={
      "email":email,
      "password":password
  };
    notifyListeners();
    final response =await dio.post("https://student.valuxapps.com/api/login",data:  dataprov);
    loginModel=LoginModel.fromJson(response.data);
}


}