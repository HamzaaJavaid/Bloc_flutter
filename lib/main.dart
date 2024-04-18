import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  InfoData info1 = InfoData(12, "In Progress");
  InfoData info2 = InfoData(13, "In Progress");



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){




          setState(() {
          });

        },
        child: Icon(Icons.adb_sharp , color: Colors.green,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hash Code for 1st Instance :- ${info1.hashCode}"),
            Text("Hash Code for 2nd Instance :- ${info2.hashCode}"),
            SizedBox(height: 10,),
            Text("ARE BOTH INSTANCE EQUAL ? ${info1==info2}"),


          ],
        ),
      ),
    );
  }
}


class InfoData{

  double id;
  String status;

  InfoData(this.id , this.status);

}