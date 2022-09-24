import 'package:dio/dio.dart';
import 'package:emelat/HomeMODEL.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  HomeModel?data;
  String?token;
  Future<dynamic>getAllData()async{
    var dio =Dio();
    dio.options.headers={
      "lang":"en",
      "content-Type":"application/json",
      "Authorization":token,
    };
    final response= await dio.get("https://student.valuxapps.com/api/home");
    data= HomeModel.fromjson(response.data);
    notifyListeners();

  }
}