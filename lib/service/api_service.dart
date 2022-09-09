import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_api_exam/model/Article.dart';

class ApiService{
  final endPoint = "https://newsapi.org/v2/everything?q=tesla&from=2022-08-09&sortBy=publishedAt&apiKey=6e50f69c6fd44537a07e88db34ee4b79";
  Future<List<Article>> getArticle() async{
    Response response = await get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw 'Data not found';
    }
  }
}