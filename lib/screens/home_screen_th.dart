import 'package:examen_th/screens/signin_screen_th.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              FlutterLogo(size: 100),
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const SigninScreen());
                  Navigator.push(context, route);
                }, 
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Sign in', style: TextStyle(fontSize: 20)),
                ),
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Sign up', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
    );
  }
}