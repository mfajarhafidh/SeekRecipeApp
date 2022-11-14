import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappsanbercode/routes/route_name.dart';
import 'package:profile/profile.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  Future<void> _signOut() async{
    await FirebaseAuth.instance.signOut();
  }

    @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null){
      print(auth.currentUser!.email);
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(icon: Icon(Icons.logout), onPressed: () {
                  _signOut().then((value) => Get.toNamed(RouteName.login_screen));
                }),
                Text('Logout')
              ],
            ),

            Profile(
              imageUrl: "https://avatars.githubusercontent.com/u/94110628?v=4",
              name: "Hi! ${auth.currentUser!.email}",
              website: "github.com/mfajarhafidh",
              designation: "Flutter Developer | Android Developer",
              email: "mfajarhafidh10@gmail.com",
              phone_number: "+6209090909",
            ),
          ],
        ),
      ),
    );
  }
}