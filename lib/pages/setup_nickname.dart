import 'package:flutter/material.dart';
import 'package:pad_project/pages/setup_birthday.dart';
import 'package:pad_project/pages/setup_padApplication.dart';



class SetupNickNamePage extends StatefulWidget {
  const SetupNickNamePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<SetupNickNamePage> createState() => _SetupNickNamePageState();
}

class _SetupNickNamePageState extends State<SetupNickNamePage> {
  String nickName = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'What would you like us \n to call you?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
            const SizedBox(height: 100,),
            const Text(
              "Please don't use your real name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  height:1.5),
            ),
            const SizedBox(
              height:70
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nickname',
                ),
              ),
            ),
            const SizedBox(height: 30,),
             ElevatedButton(
              onPressed: () {
                 Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return BirthdayPage(title: widget.title,);
        },
      ),
    );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 120,right: 120),
                child: Text("Next")),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
