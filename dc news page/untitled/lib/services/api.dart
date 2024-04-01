import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/models/articles.dart';

const String ArticleUrl = 'http://localhost:3000/api/data';

Future<List<Article>> fetchArticle() async {
  final response = await http.get(Uri.parse(ArticleUrl));

  if (response.statusCode == 200) {
    Iterable list = jsonDecode(response.body);
    List<Article> articles =
        List<Article>.from(list.map((model) => Article.fromJson(model)));
   
    return articles;
  } else {
    throw Exception('Failed to load articles');
  }
}

void main() {
  fetchArticle();
}
