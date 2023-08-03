import'package:flutter/material.dart';
import 'package:hallo/lemon.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   title: 'Canvas circle',
   theme: ThemeData(primaryColor: Colors.blue),
   home: Mycircle(),
 );
  }

}

class Mycircle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyHomeState();
}
class _MyHomeState  extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("canvas circle"),),
      body: Column(
        children: [
          Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
        ],
      ),
    );
  }

}

class OpenPainter extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size) {
    var paint1 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(200, 200), 100, paint1);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>true ;
  }
