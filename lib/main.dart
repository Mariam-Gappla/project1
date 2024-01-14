import 'package:flutter/material.dart';
import 'package:tab/widgets/CustomTextField.dart';
import 'package:tab/widgets/CustomTextFieldDropdown.dart';
import 'package:tab/widgets/PartScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? index=2;
List Design=[
  PartScreen("قياس السكر", "mg/dl"),
  PartScreen("الوزن", "Kg"),
  PartScreen("قياس الضغط", "cmHg")

];
Widget UiDesign()
{
  if(index==0)
  {
    return Design[2];
  }
  else if(index==1)
  {
    return Design[1];
  }
  else
  {
    return Design[0];
  }
}
Widget AppBarTitle()
{
  if(index==0)
    {
      return Text("قياس الضغط");
    }
  else if(index==1)
    {
      return Text("الوزن");
    }
  else
    {
      return Text("قياس السكر");
    }
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Center(child: AppBarTitle()),
            Padding(
              padding: const EdgeInsets.only(right:16,left: 120),
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 38,
                margin: EdgeInsets.only(left: 16,right: 16,bottom: 21),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("16-11-2023"),
                    Icon(Icons.calendar_today_outlined)
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: (){
                              index=0;
                              setState(() {
                              });
                            },
                            icon: Icon(Icons.add_box_outlined)),
                        Text("قياس الضغط")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 79,left: 76),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed:(){
                              index=1;
                              setState(() {
                              });
                            },
                            icon: Icon(Icons.add_box_sharp)),
                        Text("وزن")
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: (){
                            index=2;
                            setState(() {
                            });
                          },
                          icon: Icon(Icons.add_call)),
                      Text("قياس السكر")
                    ],
                  ),
                ],
              ),
              ),
            SliverToBoxAdapter(
              child: UiDesign(),
            )
          ],
        ),
      )
    );
  }
}
