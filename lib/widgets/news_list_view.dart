import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'news_item.dart';

class NewsListView extends StatelessWidget {
  NewsListView({required this.articles});
  @override
  List<ArticleModel>articles = [];
  @override
  Widget build(BuildContext context){
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) => NewsItem(articleModel: articles[index]),
    ));
  }
}


