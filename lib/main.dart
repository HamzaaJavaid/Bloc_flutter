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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){



          InfoData info1 = InfoData(12, "In Progress");
          InfoData info2 = InfoData(13, "In Progress");

          print(info1.hashCode);
          print(info2.hashCode);
          print(info2==info2);

        },
        child: Icon(Icons.adb_sharp , color: Colors.green,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hash Code for 1st Instance :- "),
            Text("Hash Code for 2nd Instance :- "),
            SizedBox(height: 10,),
            Text("ARE BOTH INSTANCE EQUAL ? "),


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