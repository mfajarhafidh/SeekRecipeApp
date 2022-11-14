import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutterappsanbercode/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
	  super.initState();
	  Timer(Duration(seconds: 3),
  		()=>Navigator.pushReplacement(context,
										MaterialPageRoute(builder:
														(context) =>
														LoginScreen()
														)
									)
		);
  }

  @override
  Widget build(BuildContext context) {
	  return Container(
	    color: Color.fromARGB(255, 239, 238, 235),
	    child: Image.asset('assets/img/SeekRecipe.png')
	  );
  }
}