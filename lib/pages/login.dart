import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final boxdecoration = BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5));

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(hintText: hintText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(height: 200,width: 200,),
            const SizedBox(height: 150,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10) ),
              child: SizedBox(width: 200,child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                SizedBox(child: Image.asset('assets/images/google.png'),),Text('Sign up with Google',style: TextStyle(color: Colors.white,fontSize: 15),)
              ]),),
            )
          ]
        ),
      ),
    );
  }
}
