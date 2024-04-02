import 'package:flutter/material.dart';
import 'package:untitled/models/articles.dart';
import 'package:untitled/services/api.dart';
import 'dart:convert';
void main() {
  runApp(Page1());
}
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  late Future<List<Article>> _futureArticles;
  List<Map<String, dynamic>> dataL = [];

  @override
  void initstate() {
    super.initState();
    _futureArticles = ArticleApi.fetchArticle();
    _futureArticles.then((articles) {
      setState(() {
        dataL = articles.map((article) => article.toJson()).toList();
      });
    });
  }

  int currentIndex = 0;

  List<Map<String, dynamic>> dataList = [
    {
      'title': 'രാജീവ് ചന്ദ്രശേഖറുമായി കൂട്ടു ചേർന്നപ്പോൾ അന്വേഷണം നിലച്ചു; ഇ.പി പറയുന്നത് സുരേന്ദ്രൻ പോലും പറയാത്തത..',
      'description':
      'തിരുവനന്തപുരം∙ കേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെയും എൽഡിഎഫ് കൺവീനർ ഇ.പി.ജയരാജന്റെയും സ്ഥാപനങ്ങൾഇഡിയുടേയും ഇൻകം ടാക്സിന്റെയും പരിശോധന കഴിഞ്ഞപ്പോഴാണെന്ന് പ്രതിപക്ഷ നേതാവ് വി.ഡി.സതീശൻ. ബിസിനസ് ബന്ധം രംഭിച്ചശേഷം പിന്നീട് കേന്ദ്ര ഏജൻസികളുടെ പരിശോധനയുണ്ടായില്ല ശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ',
      'imagePath': 'lib/assets/img.jpg',
      'isExpanded': false,
      'isBookmarkPressed': false,
      'isSharePressed': false,
    },
    {
      'title': 'രാജീവ് ചന്ദ്രശേഖറുമായി കൂട്ടു ചേർന്നപ്പോൾ അന്വേഷണം നിലച്ചു; ഇ.പി പറയുന്നത്',
      'description':
      'കേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു. വൈദേഹം റിസോർട്ടുമായി എകേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു. ',
      'imagePath': 'lib/assets/img2.jpg',
      'isExpanded': false,
      'isBookmarkPressed': false,
      'isSharePressed': false,
    },
    {
      'title': 'സദാനന്ദ ഗൗഡ ബിജെപി വിട്ടേക്കുമെന്ന് സൂചന; മൈസൂരുവിൽ കോൺഗ്രസ് സ്ഥാനാർഥിയായേക്കും',
      'description':
      'മൈസൂരുവിൽ വൊക്കലിഗ വിഭാഗത്തിൽനിന്നുള്ള സ്ഥാനാർഥിയെ മത്സരിപ്പിക്കാനാണ് കോൺഗ്രസ് ശ്രമിക്കുന്നത്. പാർട് സീറ്റ് നിഷേധിച്ചതിനെ തുടർന്ന് മുൻ മുഖ്യമന്ത്രി ജഗദീഷ് ഷെട്ടറും കഴിഞ്ഞ വർഷം നിയമസഭാ തിരഞ്ഞെടുപ്പിനു മത്സരിച്ചെങ്കിലും പരാജയപ്പെട്ടു. ജനുവരിയിൽ ബിജെപിയിൽ തിരിച്ചെത്തിയ ഷെട്ടർ രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു.',
      'imagePath': 'lib/assets/img3.jpg',
      'isExpanded': false,
      'isBookmarkPressed': false,
      'isSharePressed': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: dataL.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(dataL[index]['heading']),
              subtitle: Text(dataL[index]['content']),
            );
          },
        ),
      ),
    );
  }
}



