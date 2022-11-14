import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RecipeDetailsScreen extends StatefulWidget {
  const RecipeDetailsScreen({super.key});

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {

  
  @override
  Widget build(BuildContext context) {

   return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text('Recipe Detail Page')
              ],
            )
          ),
    );
  }
}