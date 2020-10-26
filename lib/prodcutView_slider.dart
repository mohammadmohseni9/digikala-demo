import 'dart:math';
import 'package:flutter/material.dart';
import 'sliderClass.dart';
import 'main.dart';
import 'dart:async';

class sliderviewProduct extends StatefulWidget {
  const sliderviewProduct({
    Key key,
  }) : super(key: key);
  @override
  _sliderviewProductState createState() => _sliderviewProductState();
}

class _sliderviewProductState extends State<sliderviewProduct> {
  PageController pageController = PageController();

  void initState() {
    int imgcount = 6;
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      //double nextPage = pageController.page + 1;
      if (pageController.page >= imgcount - 1) {
        pageController.animateToPage(0,
            duration: Duration(milliseconds: 3000),
            curve: Curves.fastLinearToSlowEaseIn);
      } else {
        pageController.nextPage(
            duration: Duration(milliseconds: 3000),
            curve: Curves.fastLinearToSlowEaseIn);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        LimitedBox(
          maxHeight: 250,
          child: Stack(children: [
            PageView(
              controller: pageController,
              children: [
                SliderProduct(
                  slideImage: "pdsliderimg/slider01.jpg",
                ),
                SliderProduct(
                  slideImage: "pdsliderimg/slider02.jpg",
                ),
                SliderProduct(
                  slideImage: "pdsliderimg/slider03.jpg",
                ),
                SliderProduct(
                  slideImage: "pdsliderimg/slider04.jpg",
                ),
                SliderProduct(
                  slideImage: "pdsliderimg/slider05.jpg",
                ),
                SliderProduct(
                  slideImage: "pdsliderimg/slider06.jpg",
                ),
              ],
            ),
            Positioned(
                right: 0.0,
                left: 10.0,
                bottom: 10.0,
                child: slideindicatort(
                  pageController: pageController,
                )),
          ]),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "ادوپرفیوم مردانه اسکلاره مدل Artor حجم 105 میلی لیتر",
            style: TextStyle(fontFamily: 'Iransans', fontSize: 16, height: 1.5),
          ),
        ),
        Divider(
          height: 15,
          thickness: 5,
          color: Color(0xeeeeee).withOpacity(1),
          indent: 10,
          endIndent: 10,
        ),
        Container(
          //width: d,
          //height: 30,
          //color: Colors.grey,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      "رنگ : مشکی",
                      style: TextStyle(fontFamily: 'Iransans', fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        label: Text(
                          "مشکی",
                          style:
                              TextStyle(fontFamily: 'Iransans', fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 10,
          thickness: 4,
          color: Color(0xeeeeee).withOpacity(1),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "فروشنده",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Iransans'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shop_two_rounded,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "لوکس گالری",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'Iransans'),
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "عملکرد فروشنده 3.0 از 5 ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Iransans',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 310,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xeeeeee).withOpacity(1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 10, bottom: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.assistant_photo_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "سرویس ویژه دیجی کالا : 7 روز تضمین بازگشت کالا",
                      style: TextStyle(fontSize: 14, fontFamily: 'Iransans'),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 310,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xeeeeee).withOpacity(1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 15, bottom: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.save,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "تامین کالا از 1 روز کاری آینده",
                      style: TextStyle(fontSize: 14, fontFamily: 'Iransans'),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 310,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xeeeeee).withOpacity(1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12, top: 15, bottom: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.assignment_turned_in_rounded,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "بهترین قیمت 30 روز گذشته",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Iransans',
                        color: Color(0x25a44f).withOpacity(1),
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "قیمت بهتری سراغ دارید؟",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Iransans',
                        color: Color(0x797878).withOpacity(1),
                      ),
                    ),
                    Icon(
                      Icons.announcement,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 9.0,
              )
            ],
          ),
        ),
        Container(
          height: 120,
          width: double.infinity,
          color: Color(0xf1f1f1).withOpacity(1),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.only(bottom: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.autorenew_rounded,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "با خرید این محصول شما",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Iransans',
                                color: Color(0x797878).withOpacity(1),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "154 امتیاز دیجی کلاب دریافت می کنید",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Iransans',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                child: Text(
                  "محصولات مشابه",
                  style: TextStyle(
                      fontFamily: 'Iransans',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              Container(
                //width: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  "images/addoperf.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "اددو پرفوم زنانه",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Iransans'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 5, bottom: 5),
                                    child: Text("% 10"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xe1455a).withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  "1,550,000 تومان",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  "2,000,000",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Container(
                          //color: Colors.grey.withOpacity(0.2),
                          width: 5,
                          height: 320,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  "images/addoperf.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "اددو پرفوم زنانه",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Iransans'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 5, bottom: 5),
                                    child: Text("% 10"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xe1455a).withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  "1,550,000 تومان",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  "2,000,000",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Container(
                          //color: Colors.grey.withOpacity(0.2),
                          width: 5,
                          height: 320,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  "images/addoperf.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "اددو پرفوم زنانه",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Iransans'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 5, bottom: 5),
                                    child: Text("% 10"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xe1455a).withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  "1,550,000 تومان",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  "2,000,000",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Container(
                          //color: Colors.grey.withOpacity(0.2),
                          width: 5,
                          height: 320,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  "images/addoperf.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "اددو پرفوم زنانه",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Iransans'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 5, bottom: 5),
                                    child: Text("% 10"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xe1455a).withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  "1,550,000 تومان",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  "2,000,000",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1),
                        child: Container(
                          //color: Colors.grey.withOpacity(0.2),
                          width: 5,
                          height: 320,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 250,
                                height: 200,
                                child: Image.asset(
                                  "images/addoperf.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "اددو پرفوم زنانه",
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Iransans'),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: DecoratedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 15, left: 15, top: 5, bottom: 5),
                                    child: Text("% 10"),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xe1455a).withOpacity(1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Text(
                                  "1,550,000 تومان",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Container(
                                //margin: EdgeInsets.only(left: 40),
                                child: Text(
                                  "2,000,000",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 10,
          width: double.infinity,
          color: Color(0xf1f1f1).withOpacity(1),
        ),
        Container(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 15),
                    height: 50,
                    child: Text(
                      "ویژگی های محصول",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Iransans',
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25, bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "نوع رایحه :",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontSize: 14,
                                    color: Color(0x939393).withOpacity(1),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "تلخ ، خنک",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontSize: 14,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25, bottom: 10),
                            child: Row(
                              children: [
                                Text(
                                  "ساختار رایحه",
                                  style: TextStyle(
                                    fontFamily: 'Iransans',
                                    fontSize: 14,
                                    color: Color(0x939393).withOpacity(1),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "میوه",
                                  style: TextStyle(
                                      fontFamily: 'Iransans',
                                      fontSize: 14,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 10,
          width: double.infinity,
          color: Color(0xf1f1f1).withOpacity(1),
        ),
      ],
    );
  }
}

class slideindicatort extends AnimatedWidget {
  final PageController pageController;
  slideindicatort({this.pageController}) : super(listenable: pageController);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List<Widget>.generate(6, BuildIndicator),
    );
  }

  Widget BuildIndicator(int index) {
    //print("build $index");

    double select = max(
      0.0,
      1.0 - ((pageController.page ?? pageController.initialPage) - index).abs(),
    );
    double decrease = 10 * select;
    return Container(
      width: 30,
      child: Center(
        child: Container(
          width: 20 - decrease,
          height: 10,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
