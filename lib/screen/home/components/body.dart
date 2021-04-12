import 'package:flutter/material.dart';
import 'package:tokota/screen/home/components/popular_product.dart';
import 'package:tokota/screen/home/components/special_offer.dart';
import 'package:tokota/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}