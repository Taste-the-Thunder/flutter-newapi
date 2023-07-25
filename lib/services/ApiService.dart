
import 'package:http/http.dart';
import 'package:newsapi/Model/Article.dart';

class ApiService{

  final endPoint = "https://newsapi.org/v2/everything?q=tesla&from=2023-06-25&sortBy=publishedAt&apiKey=27aafa002a324c3fb9d80fe2f2c69977";

  Future<List<Article>> getArticles() async {
      Response response = await get(endPoint);
  }
}