import 'package:flutter/material.dart';
import 'package:hallo/circle.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Column widgeet',
      theme: ThemeData(primaryColor: Colors.blue),
      home: MyColumn(),
    );
  }

}

//COLUMN WIDGET
//
// class MyColumn extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() =>_MyColumnState();
// }
//
// class _MyColumnState extends State<StatefulWidget>{
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Flutter Column'),),
//      body: Center(
//     child:Column(
//        children: [
//          Text('Text 3'),
//          Text('Text 2'),
//          Icon(Icons.umbrella,size: 45,color: Colors.pink),
//          Icon(Icons.music_note, size: 45,color: Colors.green,)
//        ],
//      ),
//      ),
//    );
//   }
// }
//CONTAINER WIDGET
class MyColumn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_MyColumnState();
}

class _MyColumnState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Container'),),
      body: Center(
        child: Container(
          width: 200,
          height: 150,
          alignment: Alignment.center,
          color: Colors.green,
          child: Text('Container'),
        ),
      ),

    );
  }
}