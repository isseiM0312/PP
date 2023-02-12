import 'dart:math';

import 'package:flutter/material.dart';

class MatchingCompletedgPage extends StatefulWidget {
  const MatchingCompletedgPage({super.key, required this.title});

  final String title;

  @override
  State<MatchingCompletedgPage> createState() => _MatchingCompletedgPageState();
}

class _MatchingCompletedgPageState extends State<MatchingCompletedgPage> with SingleTickerProviderStateMixin {

  //ate Animation _tween;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 30),
          child:SizedBox(width: 80,child: Image.asset('assets/images/appBar.png'),)),
      ),
      body: Center(child: Text(
        
        'Apply Completed!',
        textAlign: TextAlign.center,
      style: TextStyle(color: Colors.pink,fontSize: 40,fontWeight: FontWeight.w700),),)
    );
  }
}
