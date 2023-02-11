import 'package:flutter/material.dart';


class matchWithConsumer extends StatefulWidget {
  const matchWithConsumer({super.key, required this.title});


  final String title;

  @override
  State<matchWithConsumer> createState() => _matchWithConsumerState();
}

class _matchWithConsumerState extends State<matchWithConsumer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              //matching complete msg
              const Text(
                "Matching completed!!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.pink,
                  fontWeight: FontWeight.w900
                )
              ),
              const SizedBox(
                  height:20
              ),
              //pfp
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image(
                  image: AssetImage('images/defaultPfp.jpeg'),
                  width: 200,
                  height: 200,
                ),
              ),
              //her nickname is
              const SizedBox(
                  height:10
              ),
              const Text(
                  "Her Nickname is",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w100
                  )
              ),
              const SizedBox(
                  height:10
              ),
              //INSERT NAME VAR
              const SizedBox(
                  height:10
              ),
              const Text(
                  "Taylor",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w800
                  )
              ),
              const SizedBox(
                  height:10
              ),
              Container(
                width: 300,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),

              //she lives in...
              const SizedBox(
                  height:30
              ),
              const Text(
                  "She lives in",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w100
                  )
              ),
              const SizedBox(
                  height:10
              ),
              //INSERT LOCATION VAR
              const SizedBox(
                  height:10
              ),
              //INSERT NAME VAR
              const SizedBox(
                  height:10
              ),
              const Text(
                  "USA",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w800
                  )
              ),
              const SizedBox(
                  height:10
              ),
              Container(
                width: 300,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              //Hi Donator! I appreciate your help! Have a nice day
              const SizedBox(
                  height:10
              ),
              const Text(
                "Hi Donator! I appreciate\nyour help! Have a \nnice day",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'sofia',
                  fontSize: 30,
                  color: Colors.pink,
                  fontWeight: FontWeight.w800,
                )
              ),
              const SizedBox(
                  height:20
              ),
            ]
          )
        ),
      ),
    );
  }
}
