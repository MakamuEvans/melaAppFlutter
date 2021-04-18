import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle =  routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle
        ),
      ),
      body: Center(
        child: Text(
          'The Recipes for the category!',
        ),
      ),
    );
  }
}
