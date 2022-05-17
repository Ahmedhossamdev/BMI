import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
 final int result;
 final bool isMale;
 final int age;

 BMIResultScreen({
   required this.result,
   required this.isMale,
   required this.age
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: IconButton(
         onPressed: ()
         {
           Navigator.pop(context);
         },
         icon: Icon(
           Icons.keyboard_arrow_left,
         ),
       ),
      title: Text(
         'BMI Result'
    ),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
               'Gender : ${isMale ? 'Male' : 'Female'}',
                style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Result : $result',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}