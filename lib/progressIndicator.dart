import'package:flutter/material.dart';
import 'package:hallo/circle.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'circular progress indicator determinate',
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: MyProgress(),
    );
  }

}

class MyProgress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyprogressState();
}
class _MyprogressState extends State<StatefulWidget> {
  bool showProgress= false;
  double progress=0.2;
  Icon fab=Icon(Icons.refresh);
  void toggleSubmitState(){
    setState(() {
      showProgress= !showProgress;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular progress indicator determinate sample'),),
      body: Center(
        child: showProgress
            ? CircularProgressIndicator(value: progress)
            : Text('click on refresh button',
          style: TextStyle(fontSize: 20),),),
      floatingActionButton: FloatingActionButton(
        child: fab,
        onPressed: () =>
            setState(() {
              showProgress = !showProgress;
              if (showProgress) {
                Future.delayed(const Duration(milliseconds: 1000), () {
                  setState(() {
                    progress = 0.6;
                  });
                });
                fab = Icon(Icons.stop);
              } else {
                fab = Icon(Icons.refresh);
              }
            }),
      ),
    );
  }
}

//INDETERMINATE
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'circular progress indicator indeterminate',
//       theme: ThemeData(primaryColor: Colors.purple),
//       home: MyProgress(),
//     );
//   }
//
// }
//
// class MyProgress extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _MyprogressState();
// }
// class _MyprogressState extends State<StatefulWidget> {
//   bool showProgress= true;
//   double progress=0.2;
//   Icon fab=Icon(Icons.refresh);
//   void toggleSubmitState(){
//     setState(() {
//       showProgress= !showProgress;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Circular progress indicator determinate sample'),),
//       body: Center(
//         child: showProgress
//             ? CircularProgressIndicator()
//             : Text('click on refresh button',
//           style: TextStyle(fontSize: 20),),),
//       floatingActionButton: FloatingActionButton(
//         child: fab,
//         onPressed: () =>
//             setState(() {
//               showProgress = !showProgress;
//               if (showProgress) {
//                 Future.delayed(const Duration(milliseconds: 1000), () {
//                   setState(() {
//                     progress = 0.6;
//                   });
//                 });
//                 fab = Icon(Icons.stop);
//               } else {
//                 fab = Icon(Icons.refresh);
//               }
//             }),
//       ),
//     );
//   }
// }