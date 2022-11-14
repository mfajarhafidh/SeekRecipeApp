import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/pages/splash_screen.dart';
import 'package:get/get.dart';
import 'package:flutterappsanbercode/routes/page_routes.dart';
import 'utils/bottom_nav.dart';
import 'package:flutterappsanbercode/pages/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterappsanbercode/pages/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	  return GetMaterialApp(
	    title: 'Splash Screen',
	    theme: ThemeData(
		    primarySwatch: Colors.grey,
	    ),

	    home: SplashScreen(),
	    debugShowCheckedModeBanner: false,
      getPages: pageRouteApp.pages,
	  );
  }
}