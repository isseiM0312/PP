import 'package:flutter/material.dart';
import 'package:pad_project/components/modal.dart';

class DonationConfirmPage extends StatefulWidget {
  const DonationConfirmPage({super.key, required this.title});

  final String title;

  @override
  State<DonationConfirmPage> createState() => _DonationConfirmPageState();
}

class _DonationConfirmPageState extends State<DonationConfirmPage> {

  final boxdecoration = BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5));

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(hintText: hintText);
  }

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
       showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    context: context,
                     // showModalBottomSheetで表示される中身
                    builder: (context) => ViewComments(),
                  );

    });
      }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(
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
      body:  Container(
        margin: EdgeInsets.only(left: 20,top: 20),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(child:Container(
              padding: EdgeInsets.all(10),
              height: 200,width: 350,child:
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('N.42',style: TextStyle(fontWeight: FontWeight.w700),),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: 140,
                    child: Image.asset('assets/images/pad.png'),)
                ],
              ),
                const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sanitary pad name',style:  TextStyle(color: Colors.pink,fontSize: 16,fontWeight: FontWeight.w700),),
                  const SizedBox(height: 10,),
                  Text('Overnight'),
                  const SizedBox(height: 10,),
                  Text('12pcs for 1 pack'),
                  const SizedBox(height: 60,),
                  Row(children: [Text('1 pack'),SizedBox(width: 60,child: Image.asset('assets/images/dot.png'),),
                  if (widget.title == 'donator') Text('\$12',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700,color: Colors.pink),)
                  else Text('24p',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.pink),)
                  ],)
                  
                ],
              )
            ])
            ,),
            ),
            const SizedBox(height: 50,),
            Text('Donate unit can not be modefied'),
            const SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade100,),borderRadius: BorderRadius.circular(10),color: Colors.white),
              padding: EdgeInsets.only(left: 20),
              width: 280,
              child: Row(children: [
              Text('Total',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
              SizedBox(width: 100,child: Image.asset('assets/images/dot.png'),),
              if(widget.title == 'donator') Text('\$12',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700,color: Colors.pink),)
              else Text('2h',style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700,color: Colors.pink),)
            ]),),

          ]
        )),
        /* floatingActionButton: FloatingActionButton(onPressed: (() {
         
        })), */
    );
  }
}
