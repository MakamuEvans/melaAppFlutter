import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'package:meals_app/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal'),),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(category.title, category.color))
            .toList(),
      ),
    );
  }
}
