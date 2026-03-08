import 'package:flutter/material.dart';
import 'package:news/widgets/category_widget.dart';

import '../models/category_model.dart';

class CategoryListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Category(categoryModel: categories[index]);
          }),
    );
  }
}
List<CategoryModel> categories = [
  CategoryModel(image: 'assets/Technology.jpg', title: 'Technology'),
  CategoryModel(image: 'assets/Health.jpg', title: 'Health'),
  CategoryModel(image: 'assets/Entertainment.jpg', title: 'Entertainment'),
  CategoryModel(image: 'assets/business.jpg', title: 'Business'),
  CategoryModel(image: 'assets/Science.png', title: 'Science'),
  CategoryModel(image: 'assets/Sports.jpg', title: 'Sports'),
  CategoryModel(image: 'assets/General.jpg', title: 'General'),
];