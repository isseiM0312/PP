import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:pad_project/pages/pad_list.dart';
import 'package:pad_project/pages/setup_donator_info.dart';
import 'package:pad_project/pages/setup_infomation.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key, required this.title});
  final String title;

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('When is your birthday?',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.pink,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 80),
            InkWell(
                onTap: () async {
                 await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    minTime: DateTime(1900, 1, 1),
                    maxTime: DateTime(2300, 1, 1),
                  ).then((value) {
                    setState(() {
                     if (value != null) {
                      date = '${value.year}/${value.month}/${value.day}';
                     }
                    });
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    width: 300,
                    height: 50,
                    child: Center(child:Text( (date == '') ? 'YYYY/MM/DD' : date,
                        style: (date == '') ? TextStyle(color: Colors.grey) : TextStyle(color: Colors.black,fontSize: 20))))),
                        const SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          if (widget.title == 'donator') {
          return SetupDonatorInfoPage(title: widget.title,);
          } else {
            return SetUpInformationPage(title: widget.title);
          }
        },
      ),
    );
              },
              child:Padding(
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
