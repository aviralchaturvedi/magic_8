import 'package:flutter/material.dart';
import 'dart:math';
import "package:velocity_x/velocity_x.dart";

void main() => runApp(
      MaterialApp(
        home: Magic8(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Magic8 extends StatefulWidget {
  Magic8({Key key}) : super(key: key);

  @override
  _Magic8State createState() => _Magic8State();
}

var num = 1;
var color1, color;

class _Magic8State extends State<Magic8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VxAppBar(
          elevation: 20,
          backgroundColor: color,
          title: VxAppBarTitleBar(
              child: "ask me anything!!".text.bold.uppercase.make()),
          centerTitle: true,
        ),
        body: Image(image: AssetImage("images/ball$num.png"))
            .centered()
            .box
            .color(color1)
            .make()
            .onTap(() {
          setState(() {
            num = Random().nextInt(5) + 1;
            color = Vx.randomPrimaryColor;
            color1 = Vx.randomColor;
          });
        }));
  }
}
