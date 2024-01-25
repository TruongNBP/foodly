import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/constants/uidata.dart';
import 'package:foodly/views/home/widgets/category_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(restaurants.length, (i){
          var category = categories[i];
          return Container(
            height: 200.h,
            color: kPrimary,
          );
        } ),
      ),
    );
  }
}