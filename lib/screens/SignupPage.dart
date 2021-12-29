import 'package:final_year_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final name =TextEditingController();
  final fName =TextEditingController();
  final dob =TextEditingController();
  final email =TextEditingController();
  final password =TextEditingController();
  final city =TextEditingController();
  final province =TextEditingController();
  final gender =TextEditingController();
  final phoneNo =TextEditingController();
  final district =TextEditingController();
  final area =TextEditingController();






  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/logos/f_logo.png",
              height: screenHeight / 3,
              width: screenWidth / 2,
            ),

            getTextField('Enter your name',name),
            getTextField('Enter your father name',fName),
            getTextField('Enter your D-O-B',dob),
            getTextField('Enter your email',email),
            getTextField('Enter your password',password),
            getTextField('Enter your city',city),
            getTextField('Enter your province',province),
            getTextField('Enter your gender',gender),
            getTextField('Enter your phone no',phoneNo),
            getTextField('Enter your district',district),
            getTextField('Enter your area',area),

            SizedBox(
              width: screenWidth/2,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [buttonOne, buttonTwo]),
                      borderRadius: BorderRadius.circular(40)),
                  child: Container(
                    width: screenWidth,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(
                      'SignUp',
                      style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}


Widget getTextField(String hintText,
    TextEditingController textEditingController) {
  return Center(
    child: SizedBox(

      width: screenWidth / 1.2,
      height: screenHeight * 0.093,

      child: TextFormField(

        controller: textEditingController,
        validator: (textEditingController){
          if(textEditingController!.isEmpty)
          {
            return "Please Enter Something";
          }
        },
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(3),
            labelText: '    '+hintText,
            labelStyle: TextStyle(color: Colors.black),
            fillColor: Colors.white38,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: const BorderSide(
                color: Colors.blueGrey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  color: Colors.blueAccent,
                  width: 2.0,
                ))),
        style: const TextStyle(fontSize: 15),

      ),),
  );
}
