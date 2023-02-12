import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pad_project/pages/thanks_page.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({super.key, required this.title});

  final String title;

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {

  late AnimationController _controller;
  //ate Animation _tween;

   int _index = 0;
   int _index2 = 2;


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
      body: Column(children: [
        SizedBox(child: Row(children: [SizedBox(height: 50,child: Image.asset('assets/images/pplogo.png'),),
        const SizedBox(width: 10,),
        Text('Doation in Progress')]),),
        SizedBox(
          width:300,
          child:Text('Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
        SizedBox(
          width: 300,
          child:Text('person')),
        Container(
          width: 400,
          height: 100,
          child:Stepper(
            controlsBuilder: (BuildContext context, ControlsDetails details) {
        return SizedBox.shrink();
      },
      //4
      type: StepperType.horizontal,
      currentStep: _index,
      //5
      onStepCancel: () {
        if (_index != 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      //6
      onStepContinue: () {
        if (_index != 2) {
          setState(() {
            _index += 1;
          });
        }
      },
      //7
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      //8
      steps:  <Step>[
        //9
        Step(
          //10
          isActive: (_index >= 0),
          title: Text('Matching',style: TextStyle(fontSize: 12),),
          //11
          content: const SizedBox.shrink(),
        ),
        Step(
          isActive: (_index >= 1),
          title: Text('Shipping',style: TextStyle(fontSize: 12)),
          content: const SizedBox.shrink(),
        ),
        Step(
          isActive: (_index >= 2),
          title: Text('Delivered',style: TextStyle(fontSize: 12)),
          content: const SizedBox.shrink(),
        ),
      ],
    ),
      ),
      Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Center(child:Text('Read Thank You Letter')),
      ),
      const  SizedBox(height: 50,),
      SizedBox(child: Row(children: [SizedBox(height: 50,child: Image.asset('assets/images/pplogo.png'),),
        const SizedBox(width: 10,),
        Text('Doation in Progress')]),),
        SizedBox(
          width:300,
          child:Text('Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
        SizedBox(
          width: 300,
          child:Text('person')),
       Container(
          width: 400,
          height: 100,
          child:Stepper(
            controlsBuilder: (BuildContext context, ControlsDetails details) {
        return SizedBox.shrink();
      },
      //4
      type: StepperType.horizontal,
      currentStep: _index,
      //5
      onStepCancel: () {
        if (_index != 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      //6
      onStepContinue: () {
        if (_index != 2) {
          setState(() {
            _index += 1;
          });
        }
      },
      //7
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      //8
      steps:  <Step>[
        //9
        Step(
          //10
          isActive: (_index2 >= 0),
          title: Text('Matching',style: TextStyle(fontSize: 12),),
          //11
          content: const SizedBox.shrink(),
        ),
        Step(
          isActive: (_index2 >= 1),
          title: Text('Shipping',style: TextStyle(fontSize: 12)),
          content: const SizedBox.shrink(),
        ),
        Step(
          isActive: (_index2 >= 2),
          title: Text('Delivered',style: TextStyle(fontSize: 12)),
          content: const SizedBox.shrink(),
        ),
      ],
    ),
      ),
     InkWell(
      onTap: () {
         Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ThanksPage(title: 'donator',);;
        },
      ),
    );
      },
      child:Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
        child: Center(child:Text('Read Thank You Letter',style: TextStyle(color: Colors.pink),)),
      )),
      ]),  
    
    );
  }
}
