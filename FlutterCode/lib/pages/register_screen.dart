import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  registerSubmit() async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text.toString().trim(),
        password: _passwordController.text)
        .then((value) => Get.toNamed(RouteName.loginScreen));
    } catch(e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 238, 235),
        title: const Text("Register"),
        leading: IconButton(
          onPressed: (){
            Get.toNamed(RouteName.loginScreen);
          },
          icon:const Icon(Icons.arrow_back), 
        )
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/icon/SeekRecipeIcon.png'),
                radius: 140,
              ),

              const SizedBox(
                height: 40,
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
                  decoration: const InputDecoration.collapsed(hintText: "Full Name"),
                ),
              ),
              
              const SizedBox(
                height: 15,
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
                height: 50,
                width: 232,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 38, 50, 56)),
                  borderRadius: BorderRadius.circular(10),
                  ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration.collapsed(hintText: "Confirmation Password"),
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Container(
                height: 40,
                width: 328,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 126, 95),
                  borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  onPressed: () {
                    registerSubmit();
                  },
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}