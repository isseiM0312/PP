import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'I need this app to...',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10,),
            const Text(
              '''If you are a supporter, tap ‘TO GIVE’ 
or if you need pad, tap ‘TO GET’..''',
            ),
            const SizedBox(height: 20,),
            Container(
              height: 120,
              width: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10) ),
              child:Center(child:Text("TO GIVE",style: TextStyle(color: Colors.white,fontSize: 40, fontWeight: FontWeight.w700),))
            ),
            const SizedBox(height: 40,),
            Container(
              height: 120,
              width: 300,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.pink),borderRadius: BorderRadius.circular(10) ),
              child:Center(child:Text("TO GIVE",style: TextStyle(color: Colors.pink,fontSize: 40, fontWeight: FontWeight.w700),))
            ),
            
          ]
        ),
      ),
    );
  }
}
