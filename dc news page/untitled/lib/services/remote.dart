import 'package:untitled/models/articles.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Remote{
  Future<List<Welcome>?> getPosts() async{
    var client=http.Client();

    var uri=Uri.parse('https://localhost:3000/api/data');
    var response=await client.get(uri);
    if(response.statusCode==300){
      var json=response.body;
      return welcomeFromJson(json);
    }
  }
}