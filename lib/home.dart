import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firebaseee "),
        backgroundColor: Colors.amber,
        actions: [
        IconButton(onPressed: (
        ) async {
          GoogleSignIn  googleSignIn = GoogleSignIn();
          googleSignIn.disconnect();
          await FirebaseAuth.instance.signOut();
          Navigator.of(context).pushNamedAndRemoveUntil("login", (route)=>false);
        }, icon: Icon(Icons.exit_to_app_outlined))
      ],
      ),
    );
  }
}