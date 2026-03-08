import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_service.dart';
import 'package:news/widgets/news_list_view.dart';

class GeneralNewsWidget extends StatefulWidget {
  const GeneralNewsWidget({super.key , required this.CategoryName});
  final String CategoryName;
  @override
  State<GeneralNewsWidget> createState() => _GeneralNewsWidgetState();
}

class _GeneralNewsWidgetState extends State<GeneralNewsWidget> {
  @override
  Future<List<ArticleModel>>? articles;
  void initState() {
    super.initState();
    articles = NewsService.getGeneralNews(category: widget.CategoryName);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: articles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child: Text('Oops , there was an error please try again'));
          } else {
            return SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
