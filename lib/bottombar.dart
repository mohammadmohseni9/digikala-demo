import 'package:flutter/material.dart';




class bottomnavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     // elevation: 1,
      type: BottomNavigationBarType.fixed,
    fixedColor: Colors.black,
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('خانه',style: TextStyle(fontFamily: 'Iransans',fontSize: 14,color: Colors.black),),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.category),
        title: Text('دسته بندی ها',style: TextStyle(fontFamily: 'Iransans',fontSize: 14,color: Colors.black),),

      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        title: Text('سبد خرید',style: TextStyle(fontFamily: 'Iransans',fontSize: 14,color: Colors.black),),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_rounded),
        title: Text('دیجی کالای من',style: TextStyle(fontFamily: 'Iransans',fontSize: 14,color: Colors.black),),
      ),
    ]
    );
  }
}
