import 'package:digikala_demo/productPage/productView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'sliderClass.dart';
import 'mediaquery.dart';

class sliderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 3),
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: SliderPics.length,
                itemBuilder: (context, index) {
                  slider Slide = SliderPics[index];
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Slide.image),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //SizedBox(width: 25,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightGreen.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "سوپر مارکت",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.style,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "دیجی استایل",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.cyan.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.laptop,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "کالای دیجیتال",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange.withOpacity(0.5),
                          ),
                          child: Icon(Icons.track_changes),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "خانه و آشپز خانه",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.favorite,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "فروش ویژه",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 25,
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple.withOpacity(0.5),
                          ),
                          child: Icon(
                            Icons.mobile_friendly,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "خرید شارژ",
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Iransans'),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    "محصولات جدید",
                    style: TextStyle(
                        fontFamily: 'Iransans',
                        fontSize: 15,
                        color: Colors.deepPurple),
                  ),
                  onTap: (){

                  },
                ),
                GestureDetector(
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                  ),
                  onTap: (){},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => productpage()),
              );
            },
            child: Container(
              height: 380,
              child: ListView.builder(
                  itemCount: pProduct.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    product pp = pProduct[index];
                    return Container(
                        width: w * 0.60,
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color(0xeeeeee).withOpacity(1.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, right: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 7,
                              ),
                              Image.asset(pp.image),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 6.0, right: 6.0, top: 12),
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  pp.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Iransans', fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                color: Color(0xe5e5e5).withOpacity(1.00),
                                height: 1.0,
                              ),
                              Row(
                                children: [

                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 8.0,
                                      top: 10,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "قیمت اصلی",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Iransans',
                                        fontSize: 15,

                                        color: Color(0xe53e52).withOpacity(1),
                                      ),

                                    ),

                                  ),
                                  SizedBox(width: 23,),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 8.0,
                                      top: 10,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      pp.takhfif,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Iransans',
                                        fontSize: 15,
                                        decoration: TextDecoration.lineThrough,
                                        color: Color(0xe53e52).withOpacity(1),
                                      ),

                                    ),

                                  ),


                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 1.0,
                                      top: 8,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "قیمت با تخفیف",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Iransans',
                                        fontSize: 15,

                                        color: Colors.green,
                                      ),

                                    ),

                                  ),
                                  SizedBox(width: 5,),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.0, top: 10.0),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      pp.price,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Iransans',
                                        fontSize: 15,
                                        color: Colors.lightGreen.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ));
                  }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: ClipRRect(
                          child: Image.asset(
                            "images/tazh.jpg",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                          child: Container(
                        child: ClipRRect(
                          child: Image.asset(
                            "images/takh.jpg",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: ClipRRect(
                          child: Image.asset(
                            "images/mehr.jpg",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                      SizedBox(
                        width: 6,
                      ),
                      Expanded(
                          child: Container(
                        child: ClipRRect(
                          child: Image.asset(
                            "images/mehrbano.jpg",
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 360,
              //width: double.infinity,
              color: Colors.red,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Image.asset(
                          "images/takhfif.png",
                          //fit: BoxFit.cover,
                          width: 150,
                          height: 250,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.all(0),
                        width: 120,
                        height: 50,
                        //color: Colors.transparent,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(6),

                          //color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          "مشاهده همه",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Iransans'),
                        )),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          width: 200,
                          height: 333,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          width: 200,
                          height: 333,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          width: 200,
                          height: 333,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Container(
                          width: 200,
                          height: 333,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Container(
                          width: 200,
                          height: 333,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: ClipRRect(
              child: Image.asset(
                "images/chob.jpg",
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: ClipRRect(
              child: Image.asset(
                "images/kodak.jpg",
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}



