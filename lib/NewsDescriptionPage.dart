import 'package:flutter/material.dart';
import 'package:newsapi/Model/Article.dart';

class NewsDescriptionPage extends StatelessWidget {
  final Article article;
  const NewsDescriptionPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News Details'),
        ),
        body: Column(
          children: [
            Card(
              semanticContainer: true,
              elevation: 5,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Image.network('${article.urlToImage}'),
            ),
            Text(
              '${article.title}',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'Author:-${article.author}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Content:- ${article.content}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '${article.description}',
            ),
          ],
        ));
  }
}
