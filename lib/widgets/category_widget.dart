import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/screens/display_category_news_screen.dart';

class Category extends StatelessWidget {
  Category({
    super.key,
    required this.categoryModel,
  });
  CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DisplayCategoryNewsScreen(categoryName: categoryModel.title)));
        },
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(categoryModel.image), fit: BoxFit.fill),
          ),
          child: Center(
              child: Text(
            categoryModel.title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
