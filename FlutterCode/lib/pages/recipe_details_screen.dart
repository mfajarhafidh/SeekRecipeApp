import 'package:flutter/material.dart';

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
              children: const [
                Text('Recipe Detail Page')
              ],
            )
          ),
    );
  }
}