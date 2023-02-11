import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PadListPage extends StatefulWidget {
  const PadListPage({super.key, required this.title});
  final String title;

  @override
  State<PadListPage> createState() => _PadListPageState();
}

class _PadListPageState extends State<PadListPage> {
  List<String> tagList = [
    'OverNight',
    'Medium',
    'Small',
    'Large'
  ];
  List<Map<String,dynamic>> mockPads = [
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
    {
      'title' : 'pad name',
      'detail' : 'Overnight',
      'price' : 12
    },
  ];
  double _fontSize = 14;

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
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(100)
              ),
              width: 300,
              height: 50,
              padding: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Search',enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  )),
              ),
            ),
            const SizedBox(height: 10),
            tags(tagList),
            const SizedBox(height: 10,),
            Container(
              height: 500,
              padding: EdgeInsets.only(left: 16),
              child:SingleChildScrollView(child:padCardList(mockPads)),),
            const SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}
Widget tags(List<String> tagList) {
  List<Widget> tempList = [const SizedBox(width: 20,)];
  for (String tagname in tagList) {
    tempList.add(
      tag(tagname)
    );
    tempList.add(const SizedBox(width: 20,));
  }
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: tempList,
  ));
}

Widget tag(String title) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.pink),borderRadius: BorderRadius.circular(30)),
    height: 30,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
     const SizedBox(width: 5,), Text(title,style: TextStyle(fontSize: 15),),const SizedBox(width: 10,),Icon(Icons.close,size: 15,),const SizedBox(width: 5,),
    ]),
  );
}

Widget padCardList(List<Map<String,dynamic>> padList) {
  int length = padList.length ~/ 2 + padList.length%2;
  List<Widget> tempList = [];
  for (int i = 0; i < length; i++) {
    tempList.add(
      Row(
        children: [
          padCard('https://source.unsplash.com//800x600' , padList[i * 2]["title"], padList[i * 2]["detail"], padList[i * 2]["price"]),
          const SizedBox(width: 20,),
         if(i * 2 + 1 <= padList.length -1) padCard('https://source.unsplash.com//800x600' , padList[i * 2 + 1]["title"], padList[i * 2 + 1]["detail"], padList[i * 2 + 1]["price"]),
        ],
      )
    );
    tempList.add(const SizedBox(height: 20,));
  }
  return  Column(
    children: tempList,
  );
}

Widget padCard(String image,String padName,String detail, int price) {
  return Card(
    child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(
        height: 80,
        width: 160,
        child:Image.network(image)),
      const SizedBox(height: 10,),
      Text(padName,style: const TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w700),),
      const SizedBox(height: 10,),
      Text(detail,style: const TextStyle(fontSize: 15,),),
      Padding(
        padding: EdgeInsets.only(left: 100),
        child:Text("\$$price" ,style: const TextStyle(color: Colors.pink,fontSize: 25,fontWeight: FontWeight.w700),textAlign: TextAlign.end,),
    )],)
  );
}