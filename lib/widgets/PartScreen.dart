import 'package:flutter/material.dart';
import 'package:tab/widgets/CustomTextField.dart';
import 'package:tab/widgets/CustomTextFieldDropdown.dart';
class PartScreen extends StatefulWidget {
  String? Text1;
  String? Text2;
   PartScreen(this.Text1,this.Text2);

  @override
  State<PartScreen> createState() => _PartScreenState();
}

class _PartScreenState extends State<PartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child:Column(
            children: [
              CustomTextField(widget.Text1,widget.Text2),
              CustomTextFieldDropdown(),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20,top: 30),
              child: ElevatedButton(
                onPressed: (){},
                child: Text("حفظ",style: TextStyle(color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF000000)),
                  fixedSize: MaterialStateProperty.all<Size>(Size(340,50)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))
                  ),),
              ),
            ),
            Text("أو"),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16,top: 8),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Text("واى فاى",style: TextStyle(color: Colors.white),),
                      ),
                      Icon(Icons.wifi,color: Colors.white,)
                    ],),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF298363)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(129,53)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100,right: 16,top: 8),
                  child: ElevatedButton(
                    onPressed: (){},
                    child:Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Center(child: Text("بلوتوث",style: TextStyle(color: Colors.white),)),
                      ),
                      Icon(Icons.bluetooth,color: Colors.white,)

                    ],),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF000000)),
                      fixedSize: MaterialStateProperty.all<Size>(Size(129,53)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))
                      ),),
                  ),
                ),
              ],)
          ],
        ),
    ]);
  }
}

