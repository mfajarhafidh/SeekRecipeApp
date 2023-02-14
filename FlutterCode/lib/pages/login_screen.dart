import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  loginSubmit() async{
    try{
      _firebaseAuth
          .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
              .then((value) => Get.toNamed(RouteName.bottomNav));
    } catch(e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/img/SeekRecipe.png'),
                radius: 150,
              ),

              const SizedBox(
                height: 50,
              ),
            
              Container(
                height: 50,
                width: 232,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 38, 50, 56)),
                  borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration.collapsed(hintText: "E-mail"),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 50,
                width: 232,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 38, 50, 56)),
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              
              const SizedBox(
                height: 15,
              ),

              Container(
                alignment: Alignment.center,
                height: 24,
                width: double.infinity,
                child: const Text("Forgot Password?"),

              ),

              const SizedBox(
                height: 15,
              ),

              Container(
                height: 40,
                width: 328,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 126, 95),
                  borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    loginSubmit();
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  onPressed: (() {
                      Get.toNamed(RouteName.registerScreen);
                    }
                  ),
                  child: const Text(
                    "You don't have an account yet? Sign up",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}