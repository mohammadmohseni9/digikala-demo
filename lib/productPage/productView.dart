import 'package:digikala_demo/CustomAppbar.dart';
import 'package:digikala_demo/bottombar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../bottomNavbar.dart';
import '../prodcutView_slider.dart';
import '../sliderClass.dart';


class productpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        child: child(),
      ),
      body: Home(),

      bottomNavigationBar:bottomNavbar(),


    );
  }
}








class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:sliderviewProduct(),
    );
  }
}


