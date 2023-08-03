
import'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(Object context) {

    return MaterialApp(

      title: "ivic app",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget>createState() =>_MyHomePageState();
}

class _MyHomePageState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar:   AppBar(
    title:  Text('hello appbar'),
  ),
  body: Container(
    padding: EdgeInsets.all(20),
    child: Banner(
      message: "new arrival",
      location: BannerLocation.topStart,
      child: Container(
        height: 40,
        width: 35,
        child: Image.asset('images/1.jpg'),
      ),
    ),
  ),
);
  }

}

























//import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp()); class MyApp extends StatelessWidget {
// // This widget is the root of your application. @override
//   Widget build(BuildContext context) { return MaterialApp(
//     title: 'Hello World Demo Application', theme: ThemeData(
//     primarySwatch: Colors.blue,
//   ),
//     home: MyHomePage(title: 'Home page'),
//   );
//   }
// }
//
// class MyHomePage extends StatelessWidget { MyHomePage({Key? key, this.title}) : super(key: key);
// final String? title; @override
// Widget build(BuildContext context) { return Scaffold(
//   appBar: AppBar(
//     title: Text(this.title!),
//   ),
//   body: Center( child:
//   Text(
//     'Hello World',
//   )
//   ),
// );
// }
// }

