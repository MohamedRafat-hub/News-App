import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/services/news_service.dart';

void main() async
{
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
