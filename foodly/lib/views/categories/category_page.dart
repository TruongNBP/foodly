import 'package:flutter/material.dart';
import 'package:foodly/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
      ),
      body: const Center(
        child: Text("Category Page"),
      ),
    );
  }
}