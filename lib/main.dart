import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
                        SizedBox(height: 5,),

          MyWidget(Colors.purple, "amer1", () => null),
          SizedBox(height: 5,),
                    MyWidget(Colors.pinkAccent, "amer2", () => null),
                              SizedBox(height: 5,),

          MyWidget(Colors.yellow, "amer3", () => null),
                    SizedBox(height: 5,),

          MyWidget(Colors.blue, "amer4", () => null),
                    SizedBox(height: 5,),

          MyWidget(Colors.black, "amer5", () => null),



        ]);
        },
      
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  Color myColor;
  String ? myString;
  double ? highValue;
  Function() onmyTap;
MyWidget(this.myColor,this.myString,this.onmyTap);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onmyTap,
      child: ElevatedButton(
        onPressed: () {
          onmyTap;
        },
        style: ButtonStyle(alignment: Alignment.center,backgroundColor: MaterialStateProperty.all<Color>(myColor)),

        child: Text(myString!,style: TextStyle(color: Colors.amber),),
      ),
      
    );
  }
}