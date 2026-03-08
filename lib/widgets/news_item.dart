import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({
    super.key,
    required this.articleModel
  });
  ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: articleModel.image !=null ? Image.network(
            width: double.infinity,
            articleModel.image!,
            fit: BoxFit.fill,
          ) : Image.asset('assets/Technology.jpg'),
        ),
        Text(
          articleModel.title ??  '',
          style: TextStyle(color: Colors.black, fontSize: 20 , overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        Text(
          articleModel.description ?? '',
          style: TextStyle(color: Colors.grey, fontSize: 16 ,  overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
