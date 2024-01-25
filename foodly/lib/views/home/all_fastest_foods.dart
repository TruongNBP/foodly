import 'package:flutter/material.dart';
import 'package:foodly/common/app_style.dart';
import 'package:foodly/common/reusable_text.dart';
import 'package:foodly/constants/constants.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: ReusableText(
          text: "All fastest food closer to you",
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: const Center(
        child: Text("All fastest food closer to you"),
      ),
    );
  }
}
