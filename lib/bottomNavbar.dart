import 'package:flutter/material.dart';


class bottomNavbar extends StatelessWidget {
  const bottomNavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 80,

      decoration: BoxDecoration(color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.1,2.0),
            blurRadius: 3.0,
          ) ,
        ],


      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            child: Center(
              child: (
                  Text("افزودن به سبد خرید",style: TextStyle(fontSize: 16,fontFamily: 'Iransans',fontWeight: FontWeight.bold,color: Colors.white),)
              ),
            ),
            width: 170,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Color(0xe92531).withOpacity(1),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                  child: Text("1658000",style: TextStyle(fontSize: 16,fontFamily: 'Iransans',fontWeight: FontWeight.bold,color: Colors.grey[500],decoration: TextDecoration.lineThrough,),
                  ),
                margin: EdgeInsets.only(left: 20),

              ),
              SizedBox(height: 5,),
              Container(
                  child: Text("1658000 تومان",style: TextStyle(fontSize: 16,fontFamily: 'Iransans',fontWeight: FontWeight.bold,color: Colors.black),)
    ,margin: EdgeInsets.only(left: 20)
              ),
            ],
          )
        ],
      ),
    );
  }
}