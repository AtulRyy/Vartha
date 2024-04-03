import 'package:flutter/material.dart';
import 'package:untitled/models/articles.dart';
import 'package:untitled/services/api.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late Future<List<Article>> _futureArticles;
  List<Map<String, dynamic>> dataL = [];

  @override
  void initState() {
    super.initState();
    _futureArticles = ArticleApi.fetchArticle();
    _futureArticles.then((articles) {
      setState(() {
        dataL = articles.map((article) => article.toJson()).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ListView.builder(
              itemCount: dataL.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataL[index]['heading']!),
                  subtitle: Text(dataL[index]['content']!),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
