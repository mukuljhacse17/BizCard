import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BizCard(),
    );
  }
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to BizCard "),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getcard(),
            SizedBox(height: 60),
            _getAvater()


          ],
        ),
      ),



    );
  }

 Widget _getcard() {
    return Container(
      margin: EdgeInsets.all(50),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text("Mukul jha",style: TextStyle(
             fontSize: 20.0,
             fontWeight: FontWeight.w500,
             color: Colors.white
         ),),
         Text("buildappswithmukul.com")
         ,Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.person_outline),
             Text("Twitter:@mukuljha302",style: TextStyle(
               fontSize: 20.0,
               fontWeight: FontWeight.w500,
               color: Colors.white30
             ),)
           ],
         )
       ],
      ),
    );

 }

 Widget _getAvater() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent,width: 1.2)
,image:  DecorationImage(
          image: NetworkImage("https://picsum.photos/200")
      ,fit: BoxFit.cover)     ),

    );
 }
}


