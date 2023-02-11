import 'package:flutter/material.dart';



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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'What would you like us to call you?',
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            const Text(
              "Please don't use your real name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  height:1.5),
            ),
            const SizedBox(
              height:10
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
          ],
        ),
      ),
    );
  }
}
