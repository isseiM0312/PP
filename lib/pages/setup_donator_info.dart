import 'package:flutter/material.dart';

class SetupDonatorInfoPage extends StatefulWidget {
  const SetupDonatorInfoPage({super.key, required this.title});

  final String title;

  @override
  State<SetupDonatorInfoPage> createState() => _SetupDonatorInfoPageState();
}

class _SetupDonatorInfoPageState extends State<SetupDonatorInfoPage> {
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
              'Complete your profile',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Gender',style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 10,),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child:Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 70,left: 20),
                      child: const Text(
                        'Female',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                    const SizedBox(width: 20,),
                    InkWell(
                      onTap: () {},
                      child:Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 70,left: 29),
                      child: const Text(
                        'Male',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                    const SizedBox(width: 20,),
                    InkWell(
                      onTap: () {},
                      child:Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(top: 70,left: 7),
                      child: const Text(
                        'Self-Identify',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                    
                  ],
                ),
                    const SizedBox(height: 20,),
                Text('Where are you from ?',style: TextStyle(fontSize: 20),),

                    const SizedBox(height: 10,),
                    Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(decoration: InputDecoration(enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),),
                    ),
                  const SizedBox(height: 20,),
                Text('What is your job?',style: TextStyle(fontSize: 20),),

                    const SizedBox(height: 10,),
                    Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(10),
                      child: TextFormField(decoration: InputDecoration(enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),),
                    ),
              ]),
              
            ),
            const SizedBox(
              height: 20,
            ),
            Container(child: Column(children: [
              Text('')
            ]),),
            InkWell(
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Complete',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
