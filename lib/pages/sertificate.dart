import 'package:flutter/material.dart';

class SertificatePage extends StatefulWidget {
  const SertificatePage({super.key, required this.title});

  final String title;

  @override
  State<SertificatePage> createState() => _SertificatePageState();
}

class _SertificatePageState extends State<SertificatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(children: [
        Container(height: double.infinity,width: double.infinity,
        color: Colors.grey.shade100,),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 370,
              width: double.infinity,
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 237, 146, 176),
                Color.fromARGB(255, 225, 62, 116),
                Color.fromARGB(255, 255, 1, 86)]
              ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
              boxShadow: [
                 BoxShadow(
                    color: Colors.grey, //色
                    spreadRadius: 5, 
                    blurRadius: 5, 
                    offset: Offset(1, 1),
                  ),
              ]
              ),
              child: Column(children: [
                const SizedBox(height: 80,),
                 ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                height: 150,
                child:Image.network('https://source.unsplash.com//800x800'))),
                const SizedBox(height: 20,),
              Text('David Lee',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 30),),
            Text('Donator',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
           const SizedBox(height: 20,)  ,
          SizedBox(child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
            const SizedBox(width: 100,),
           Text('Letter',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize: 15),),
           
          ]),),

          
              ]),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              height: 80,
            decoration: BoxDecoration(
              
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('email',style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 20,),
              Text("mail@mail.com")
            ]),
          ),
           const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Country',style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 20,),
              Text("Korea")
            ]),
          ), const SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              height: 80,
            decoration: BoxDecoration(
              
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Job',style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 20,),
              Text("Developer")
            ]),
          )
          ]
        ),
      
      ],)
        );
    
  }
}
