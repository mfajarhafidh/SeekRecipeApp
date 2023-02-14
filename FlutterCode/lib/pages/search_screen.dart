import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.toNamed(RouteName.bottomNav);
          }, 
          child: const Text('Search Page'),
          ),
      ),
    );
  }
}