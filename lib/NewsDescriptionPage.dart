import 'package:flutter/material.dart';
import 'package:news_api_exam/model/Article.dart';
import 'package:news_api_exam/widgets/NewsCardWidgets.dart';

class NewsDescriptionPage extends StatelessWidget {
  final Article data;
  const NewsDescriptionPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsCardWidgets(article: data,),
    );
  }
}
