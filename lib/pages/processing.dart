import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pad_project/components/progress_bar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
  }

   @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: AnimatedBuilder(animation: _controller,builder: ((context, child) {
        return Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          /* CircularStepProgressIndicator(
        totalSteps: 8,
        currentStep: 23,
        stepSize: 24,
        selectedColor: Colors.pink,
        padding: pi / 5,
        width: 100,
        height: 100,
        startingAngle: - pi / 36,
        arcSize: pi * 2,
        gradientColor: SweepGradient(
          startAngle: - pi / 36,
            colors: [Colors.pink, Colors.pink.shade300, Colors.white],
        ),
    ), */
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
