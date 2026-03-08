import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  static Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=5888f77ac9e14e66ad8254c94f2fff38&category=$category');
      Map<String, dynamic> json = response.data;
      List<dynamic> articles = json['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(ArticleModel.fromJson(article));
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
