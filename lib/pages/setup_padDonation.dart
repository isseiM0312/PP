import 'package:flutter/material.dart';
import 'package:pad_project/pages/donation_confirm.dart';


class setupPadDon extends StatefulWidget {
  const setupPadDon({super.key, required this.title});


  final String title;

  @override
  State<setupPadDon> createState() => _setupPadDonState();
}

class _setupPadDonState extends State<setupPadDon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Container(
            padding: EdgeInsets.only(left: 30,top: 5),
                  width: 40,
                  height: 40,
                  child: InkWell(
                    onTap: () {
                      // Code to execute when the button is pressed
                      Navigator.pop(context);
                    },
                    child: Text(
                      "<",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: 30),
          child:SizedBox(width: 80,child: Image.asset('assets/images/appBar.png'),)),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //back button
                //sanitary pad picture
                Container(
                  height: 400,
                  width: 400,
                  child: Image(
                    image: AssetImage('assets/images/pad.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //sanitary pad name
                Text(
                  'Stayfree Maxi Overnight Pads with Wings For Women, Reliable Protection and Absorbency of Feminine Periods, 28 Count',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "• Overnight protection for even heavy menstrual periods, discharge, and perspiration to help you wake up feeling more comfortable\n• Night guard zone with 24 anti leak channels and extra wide coverage help protect against leaks from frontto back and side to side so you can worry less and focus on a good night’s sleep\n • Incredibly soft cover for maximum comfort even throughout your heaviest nights\n• Quick absorbing quilted cover keeps fluids away from your body so you can sleep comfortably and confidently\n• Neutralizes odors so you can wake up with confidence and without changing your routine",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                //apply button
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () {
                      // Code to execute when the button is pressed
                    },
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return DonationConfirmPage(title: 'girl');
        },
      ),
    );
                      },
                      child: Text(
                        "Apply pads",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
