import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAppbar extends PreferredSize {
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      alignment: Alignment.center,
      child: Material(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "جست و جو در دیجیکالا",
                  hintStyle: TextStyle(
                    fontFamily: 'Iransans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),

                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 15, right: 8),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ),

//contentPadding:
                ),

              )


            ],
          ),
        ),
      ),

    );
  }
}