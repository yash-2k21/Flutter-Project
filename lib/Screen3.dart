import 'package:flutter/material.dart';
class TraningCompletion extends StatelessWidget {
String title = '';
TraningCompletion({Key? key, required this.title}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(
child: Padding(
padding: const EdgeInsets.all(10.0),
child: Column(
children: [
Center(
child: Column(children: [
SizedBox(height: 10,),
Text("Hi,[$title]", style: TextStyle(fontSize: 42),),
SizedBox(height: 20,),
Image(image: NetworkImage('https://png.pngtree.com/pngclipart/20190520/original/pngtree-certificate-vector-design-with-gold-ribbonpng-image_4193313.jpg')),
SizedBox(height: 20,),
]),
),
Text("You have completed Hybrid Mobile app devleopment Course.", 
textDirection: TextDirection.ltr,
style: new TextStyle(fontSize: 20.0),
maxLines: 2,),
Text("Instructor Name", style: TextStyle(fontSize: 28, fontWeight: 
FontWeight.bold),),
Text("Pankaj Kapoor", style: TextStyle(fontSize: 20,color: 
Color.fromARGB(255, 33, 61, 243), ),),
],
),
),
),
);
}
}