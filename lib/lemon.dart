
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  title: "flutter banner min",
  theme: ThemeData(primaryColor: Colors.cyan),
    home: HomePage(),
);
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyHomeState();
  }
class MyHomeState  extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Flutter Banner"),),
     body: Container(padding: EdgeInsets.all(20),

         child: Center(child: Column(
       children:[
         Banner(message: "New arrival",location: BannerLocation.topStart,
          child: Container( height: 100,width: 80,color: Colors.yellow, padding: EdgeInsets.only(bottom: 10),),),

         Banner(message: "New arrival",location: BannerLocation.topEnd,
          child: Container(height: 100,width: 80,color: Colors.yellow, padding: EdgeInsets.only(bottom: 10),alignment: Alignment.center,
          child: const Text("new banner"),

         ),
         ),

         Banner(message: "New arrival",location: BannerLocation.bottomStart,
          child: Container( height: 100,width: 80,color: Colors.yellow),),

         Banner(message: "New arrival",location: BannerLocation.bottomEnd,
          child: Container( height: 100,width: 80,color: Colors.yellow),),
    ]
     ),
     ),
     ),
   );
  }
}