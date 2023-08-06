import'package:flutter/material.dart';
import 'package:hallo/circle.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Rectangle task',
     theme: ThemeData(primaryColor: Colors.pink),
     home: MyRectangle(),
   );
  }

}

class MyRectangle  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MyRectangleState();

}

class _MyRectangleState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rectangle task'),),
      body: Center(
        child:Container (
          width: 300,
          height: 150,
        child: CustomPaint(
          painter: OpenPainter(),
        ),
      )
      ),
    );
  }
}
class OpenPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint1= Paint()
      ..color=Colors.purple
      ..style=PaintingStyle.fill;
    Rect rect= Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;
}