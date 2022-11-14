import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:flutterappsanbercode/pages/search_screen.dart';
import 'package:flutterappsanbercode/pages/profile_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.toNamed(RouteName.bottom_nav);
          }, 
          child: Text('Search Page'),
          ),
      ),
    );
  }
}