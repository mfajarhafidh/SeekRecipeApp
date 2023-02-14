import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/pages/splash_screen.dart';
import 'package:get/get.dart';
import 'package:flutterappsanbercode/routes/page_routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
	  return GetMaterialApp(
	    title: 'Splash Screen',
	    theme: ThemeData(
		    primarySwatch: Colors.grey,
	    ),

	    home: const SplashScreen(),
	    debugShowCheckedModeBanner: false,
      getPages: PageRouteApp.pages,
	  );
  }
}