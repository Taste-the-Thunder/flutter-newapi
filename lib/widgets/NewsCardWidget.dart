import 'package:flutter/material.dart';
import 'package:newsapi/Model/Article.dart';

class NewsCardWidget extends StatelessWidget {
  final Article article;
  const NewsCardWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          semanticContainer: true,
          elevation: 5,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          child: Image.network(
            '${article.urlToImage}'
          ),
        ),
        Text('${article.title}',style: TextStyle(fontSize: 22),),
        Text('${article.description}',
          maxLines: 3,
          style: TextStyle(
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
