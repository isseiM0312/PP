import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key, required this.title});
  final String title;

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
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
            const Text('When is your birthday?',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.pink,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    minTime: DateTime(1900, 1, 1),
                    maxTime: DateTime(2300, 1, 1),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    width: 150,
                    height: 30,
                    child: Text('YYYY/MM/DD',
                        style: TextStyle(color: Colors.grey)))),
            ElevatedButton(
              onPressed: () {},
              child: Text("Next"),
              style: TextButton.styleFrom(
                  primary: Colors.white, backgroundColor: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
