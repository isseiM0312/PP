import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pad_project/pages/processing.dart';

class ViewComments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 300,
      child: Column(children: [
        const SizedBox(height: 10,),
        Container(
          height: 20,
          width: 200,
          decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(30)),
                  ),
          const SizedBox(height: 40,),
        const Text('Would you like to apply?', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
        const SizedBox(height: 50,),
        Row(children: [
          const SizedBox(width: 60,),
          InkWell(child: InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child:Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.pink,),borderRadius: BorderRadius.circular(20)),
            child: Center(child:Text('No',style: TextStyle(fontSize: 20,color: Colors.pink),),)
          )),),
          const SizedBox(width: 40,),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return ProccessingPage(title: 'girl',);
        },
      ),
    );
            },
            child: Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(color: Colors.pink,border: Border.all(color: Colors.pink,),borderRadius: BorderRadius.circular(20)),
            child: Center(child:Text('Yes',style: TextStyle(fontSize: 20,color: Colors.white),)),
          ),),
        ],)
      ]),
   );
 }
}