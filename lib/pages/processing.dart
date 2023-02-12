import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pad_project/pages/matching_completed.dart';

class ProccessingPage extends StatefulWidget {
  const ProccessingPage({super.key, required this.title});

  final String title;

  @override
  State<ProccessingPage> createState() => _ProccessingPageState();
}

class _ProccessingPageState extends State<ProccessingPage> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  //ate Animation _tween;

  @override

  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
   //_tween = Tween(begin: 0,end: 8).animate(_controller);

   Future.delayed(Duration(seconds: 1)).then((value) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return MatchingCompletedgPage(title: 'girl',);
        },
      ),
    );
   });
   
  }

   @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 30),
          child:SizedBox(width: 80,child: Image.asset('assets/images/appBar.png'),)),
      ),
      body: AnimatedBuilder(animation: _controller,builder: ((context, child) {
        return Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
   SizedBox(
    height: 100,
    width: 100,
    child: CircularProgressIndicator(
      color: Colors.pink,
      strokeWidth: 10,
    )),
    const SizedBox(height: 40,),
    Text('Matching...',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w700),)])
      );
      }),),  
    );
  }
}
