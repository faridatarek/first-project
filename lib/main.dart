
  import 'package:emelat/CategoryProvider.dart';
import 'package:emelat/HomeProvider.dart';
import 'package:emelat/LoginProvider.dart';
import 'package:emelat/home_SCREEN.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

  import 'LoginPage.dart';
import 'ProfileSCreen.dart';
import 'registerPage.dart';


  void main() {
    runApp( MyApp());
  }

  class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
  @override
  void initState() {

  super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return MultiProvider(providers: [
   ChangeNotifierProvider(create: (context)=>CategoryProvider()),

    ChangeNotifierProvider(create: (context)=>HomeProvider()),
    ChangeNotifierProvider(create: (context)=>LoginProvider())
  ]
     , child:  MaterialApp(
        debugShowCheckedModeBanner: false,

    home:LoGin(),

  )

  );
  }
  }
