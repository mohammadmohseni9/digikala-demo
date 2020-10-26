import 'package:flutter/material.dart';
import 'package:digikala_demo/mediaquery.dart';
import '';

class slider {
  String image;
  slider(this.image);
}

List SliderPics = <slider>[
  slider("images/1.jpg"),
  slider("images/2.jpg"),
  slider("images/3.jpg"),
  slider("images/4.jpg"),
  slider("images/5.jpg")
];

class product {
  String image, title, takhfif, price;
  product(this.image, this.title, this.takhfif, this.price);
}

List pProduct = <product>[
  product(
      "product/atr.jpg",
      "ادوپرفیوم مردانه اسکلاره مدل Artor حجم 105 میلی لیتر",
      " 343,000 تومان",
      " 343,000 تومان"),
  product("product/kafsh.jpg", "کفش پیاده روی زنانه رامیلا مدل مسکو کد 7748",
      "340,000 تومان", " 343,000 تومان"),
  product("product/kafsh2.jpg", "کفش پیاده روی سعیدی مدل Sa 401",
      "155,000 تومان", " 343,000 تومان"),
  product("product/ketab.jpg", "کتاب خودت باش دختر", "15,900 تومان",
      " 343,000 تومان"),
  product("product/lebas.jpg", "پولوشرت آستین کوتاه مردانه زی مدل 1531270MC",
      "250,000 تومان", " 343,000 تومان"),
  product("product/mic.jpg", " هدفون بی‌ سیم شیائومی مدل Redmi AirDots",
      "400,000 تومان", " 343,000 تومان"),
  product(
      "product/mobile.jpg",
      "گوشی موبایل شیائومی مدل Redmi Note 9 M2003J15SS دو سیم‌ کارت ظرفیت 128 گیگابایت",
      "8,550,000 تومان",
      " 343,000 تومان"),
  product("product/mozer.jpg", "ماشین اصلاح موی صورت پرو جیمی مدل GM-6078",
      "2,150,000 تومان", " 343,000 تومان"),
  product(
      "product/spray.jpg",
      "شامپو استم سل مخصوص موهای خشک و آسیب دیده حجم 250 میلی لیتر",
      "80,000 تومان",
      " 343,000 تومان"),
];



class SliderProduct extends StatelessWidget {
final String slideImage;
SliderProduct({this.slideImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 200,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                slideImage,
                fit: BoxFit.fill,
              ),
          ),
        ),

    );
  }
}
