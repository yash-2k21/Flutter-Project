import 'package:flutter/material.dart';
import 'Screen3.dart';
class userLogin extends StatefulWidget {
const userLogin({Key? key}) : super(key: key);
@override
State<userLogin> createState() => _userLoginState();
}
class _userLoginState extends State<userLogin> {
TextEditingController _name = TextEditingController();
bool nameVal = false;
bool emailVal = false;
String? name;
TextEditingController _email = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(
child: Padding(
padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
child: ListView(
children: [
Text("Login", style: TextStyle(fontSize: 42, fontWeight: 
FontWeight.bold, color: Color.fromARGB(255, 83, 0, 98))),
SizedBox(
height: 50,
),
TextField(
keyboardType: TextInputType.name,
controller: _name,
decoration: InputDecoration(
hintText: "Student Name",
errorText: nameVal ? 'Name Can\'t Be Empty' : null,
hintStyle: TextStyle(fontSize: 18),
border: UnderlineInputBorder(),
icon: Icon(Icons.person, color: Colors.black54,)
),
),
SizedBox(
height: 20,
),
TextField(
keyboardType: TextInputType.name,
controller: _email,
decoration: InputDecoration(
hintText: "Email ID",
errorText: nameVal ? 'Email Can\'t Be Empty' : null,
hintStyle: TextStyle(fontSize: 18),
border: UnderlineInputBorder(),
icon: Icon(Icons.alternate_email, color: Colors.black54,)
),
),
SizedBox(
height: 30,
),
SizedBox(
width: 200,
height: 50,
child: ElevatedButton(
style: ElevatedButton.styleFrom(
primary: Color.fromARGB(255, 83, 0, 98)
),
onPressed: (){
setState(() {
_name.text.isEmpty ? nameVal = true : name = _name.text;
_email.text.isEmpty ? emailVal = true : emailVal = 
false;
});
if(nameVal == false && emailVal == false){
Navigator.push(context, MaterialPageRoute(builder: 
(context){return TraningCompletion(title: _name.text,);}));
}
}, 
child: Text("Login", style: TextStyle(fontWeight: 
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
