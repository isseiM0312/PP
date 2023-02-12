import 'package:flutter/material.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({super.key, required this.title});

  final String title;

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50,),
            Container(height: 100,width: double.infinity,
            margin: EdgeInsets.only(left: 40),
            child: Row(children: [
             ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                height: 100,
                child:Image.network('https://source.unsplash.com//800x800'))),
                const SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('From.',style: TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text('MoeMoe',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)
                ],)
            ]),),
            const SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(border:Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10),
              ),
               child: Row(children: [
                SizedBox(
                  width: 100,
                  height: 59,
                  child:Image.asset('assets/images/pad.png')),
                const SizedBox(width: 40,),
                Column(children: [
                 const Text('Pad name',style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w700),),
                 const SizedBox(height: 10,),
                 Text('2023,1,1')
                ],)
              ],)
            ),
            const SizedBox(height: 40,),
           const Text('Thanks letter form',style: TextStyle(color: Colors.pink),),
           Container(
            width: 300,
            padding: EdgeInsets.all(30),
              decoration: BoxDecoration(border:Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10),
              ),
               child: Text(
                '''
Thank you David!
I got Pads that you donated to me!
I really need them 
because my period is coming
but I don’t have enough money to buy.
Thank you again for donating pads!   

'''
               )
            ),
          ]
        ),
      );
    
  }
}
