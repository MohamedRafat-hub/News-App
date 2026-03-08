import 'package:flutter/material.dart';
import 'package:news/widgets/general_news_widget.dart';

class DisplayCategoryNewsScreen extends StatelessWidget {
  const DisplayCategoryNewsScreen({super.key , required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          GeneralNewsWidget(CategoryName: categoryName),
        ],
      ),
    );
  }
}
