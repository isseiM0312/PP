import 'package:flutter/material.dart';
import 'package:pad_project/pages/pad_list.dart';
import 'package:pad_project/pages/setup_photo.dart';

class AreYouPage extends StatefulWidget {
  const AreYouPage({super.key, required this.title});

  final String title;

  @override
  State<AreYouPage> createState() => _AreYouPageState();
}

class _AreYouPageState extends State<AreYouPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'I need this app to...',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10,),
            const Text(
              '''If you are a supporter, tap ‘TO GIVE’ 
or if you need pad, tap ‘TO GET’..''',
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: () {
                 Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SetUpPhotonPage(title: 'donator',);;
        },
      ),
    );
              },
              child:Container(
              height: 120,
              width: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10) ),
              child:Center(child:Text("TO GIVE",style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.w700),))
            )),
            const SizedBox(height: 40,),
            Stack(children:[
              Padding(padding: EdgeInsets.only(left: 200),child: SizedBox(height: 100,width: 100,child: Image.asset('assets/images/get-money.png')),)
              ,
              
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SetUpPhotonPage(title: 'girl',);
        },
      ),
    );
                },
                child:Container(
              height: 120,
              width: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.pink),borderRadius: BorderRadius.circular(10) ),
              child:Center(child:Text("TO GET",style: TextStyle(color: Colors.pink,fontSize: 40, fontWeight: FontWeight.w700),))
            ))]),
            
          ]
        ),
      ),
    );
  }
}
