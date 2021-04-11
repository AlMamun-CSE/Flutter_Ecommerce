import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tokota/constants.dart';
import 'package:tokota/size_config.dart';

import 'icon_btn_with_counter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6,
                    // height: 50,
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        //search value

                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Products",
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9)
                        )
                      ),
                    ),
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Cart Icon.svg",
                    press: () {
                    },
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Bell.svg",
                    numOfItems: 1,
                    press: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
