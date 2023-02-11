import 'package:flutter/material.dart';

class SetUpInformationPage extends StatefulWidget {
  const SetUpInformationPage({super.key, required this.title});

  final String title;

  @override
  State<SetUpInformationPage> createState() => _SetUpInformationPageState();
}

class _SetUpInformationPageState extends State<SetUpInformationPage> {
  String firstName = '';
  String lastName = '';
  String addressLine1 = '';
  String addressLine2 = '';
  String city = '';
  String postalCode = '';
  String country = '';

  final boxdecoration = BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5));

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(hintText: hintText);
  }

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
              'Ship to',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Your address to get pads is managed secretly.',
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 40,
                  decoration: boxdecoration,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'First Name',
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 150,
                    height: 40,
                    decoration: boxdecoration,
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Last Name',
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 300,
              decoration: boxdecoration,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Address Line 1',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 300,
              decoration: boxdecoration,
              child: TextField(
                  decoration:
                      InputDecoration(hintText: 'Address Line 2 (optional)',
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 300,
              decoration: boxdecoration,
              child: TextField(decoration: InputDecoration(hintText: 'City',
              enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 150,
                  decoration: boxdecoration,
                  child: TextField(
                      decoration: InputDecoration(hintText: 'Postal Code',
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ))),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 40,
                  width: 150,
                  decoration: boxdecoration,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Country',
                    enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                width: 280,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
