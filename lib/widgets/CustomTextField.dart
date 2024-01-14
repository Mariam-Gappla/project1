import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? text1;
  String? text2;
   CustomTextField(this.text1,this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12,left: 12,top: 34),
      child: TextFormField(
        textAlign:TextAlign.center,
        decoration: InputDecoration(
          suffix: Text("$text1"),
          prefix: Text("$text2"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xff000),
            ),
          ),
        ),
      ),
    );
  }
}
