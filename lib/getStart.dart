// ignore: depend_on_referenced_packages
import 'userLogin.dart';
import 'package:flutter/material.dart';
class getStart extends StatefulWidget {
const getStart({Key? key}) : super(key: key);
@override
State<getStart> createState() => _getStartState();
}
class _getStartState extends State<getStart> {
@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(
child: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Text("TRAINING", style: TextStyle(fontSize: 42, fontWeight: 
FontWeight.bold, color: Color.fromARGB(255, 83, 0, 98))),
Image(image: AssetImage('images/training.png'), height: 400,),
SizedBox(
width: 300,
height: 50,
child: ElevatedButton(
style: ElevatedButton.styleFrom(
primary: Color.fromARGB(255, 83, 0, 98)
),
onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: 
(context){return userLogin();}));
}, 
child: Text("Get Started", style: TextStyle(fontWeight: 
FontWeight.bold, fontSize: 18,color: Colors.white,)),
),
)
],
),
),
),
);
}
}