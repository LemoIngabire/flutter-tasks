import'package:flutter/material.dart';
void main()=>runApp(MyAppBox());

class MyAppBox extends StatelessWidget {
  const MyAppBox({Key? key}):super(key: key);
    final String _title="ivic tutorial";

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: _title,
    theme: ThemeData(primaryColor: Colors.black),
    home: Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: MyBodyWigdet(),
    ) ,
  );
  }
  }

class MyBodyWigdet  extends StatefulWidget{
  MyBodyWigdet({Key? key}): super(key: key);
  @override
  State<MyBodyWigdet> createState()=> _MyBodyState();
}

class _MyBodyState  extends State<MyBodyWigdet>{
  @override
  Widget build(BuildContext context) {
   return Center(
   child: Column(
       children:[
         SizedBox(height: 40),
        Container(
         height: 120,
         width: 120,
         alignment: Alignment.center,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(5),
             boxShadow:const[
              BoxShadow(
               color: Colors.grey,
               offset: Offset(4,4),
               blurRadius:7,
               spreadRadius: 0,
              ),
             ],
           color: Colors.greenAccent,
         ),
   child: Text('Container 1'),
        ),
         SizedBox(height: 20),
         Container(
           height: 120,
           width: 120,
           alignment: Alignment.center,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(5),
             boxShadow:const[
               BoxShadow(
                 color: Colors.red,
                 offset: Offset(4,4),
                 blurRadius:7,
                 spreadRadius: 0,
               ),
               BoxShadow(
                 color: Colors.blue,
                 offset: Offset(-4, -4),
                 blurRadius: 7,
                 spreadRadius: 0,
               )
             ],
             color: Colors.greenAccent,
           ),
           child: Text('Container 2'),
         ),
         SizedBox(height: 20),
         Container(
           height: 120,
           width: 120,
           alignment: Alignment.center,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(5),
             boxShadow:const[
               BoxShadow(
                 color: Colors.grey,
                 offset: Offset(4,4),
                 blurRadius:7,
                 spreadRadius: 0,
               ),
             BoxShadow(
               color: Colors.grey,
               offset: Offset(-4,-4),
               blurRadius:7,
               spreadRadius: 0,
             ),
             ],
             color: Colors.greenAccent,
           ),
           child: Text('Container 3'),
         ),
   ]
   ),
   );
  }
}

