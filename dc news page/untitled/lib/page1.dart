import 'package:flutter/material.dart';
import 'package:untitled/page2.dart';
import 'package:untitled/page3.dart';
import  'package:untitled/models/articles.dart';
import 'package:untitled/services/remote.dart';
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onHorizontalDragEnd: (details) {
                if (details.primaryVelocity! < 0) {
                  // Swiped left
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page2()),
                  );
                }
                else if (details.primaryVelocity! > 0) {
                  // Swiped left
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page3()),
                  );
                }
              },
                child: MyHomePage(),
            );
          },
        ),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Welcome>? posts;
  var isLoaded=false;


  bool isExpanded = false;
  bool isBookmarkPressed = false;
  bool isSharePressed = false;

  @override
  void initState() {

    super.initState();
    getData();
  }

  getData() async{
    posts=await Remote().getPosts();
    if(posts!=null){
      isLoaded=true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 36,
          left: 0,
          right: 0,
          child: Image.asset(
            'lib/assets/img.jpg', height: 457,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 390,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 2, right: 2),
            height: 464,
            width: 430,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    posts![1].heading,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'തിരുവനന്തപുരം∙ കേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെയും എൽഡിഎഫ് കൺവീനർ ഇ.പി.ജയരാജന്റെയും സ്ഥാപനങ്ങൾഇഡിയുടേയും ഇൻകം ടാക്സിന്റെയും പരിശോധന കഴിഞ്ഞപ്പോഴാണെന്ന് പ്രതിപക്ഷ നേതാവ് വി.ഡി.സതീശൻ. ബിസിനസ് ബന്ധം രംഭിച്ചശേഷം പിന്നീട് കേന്ദ്ര ഏജൻസികളുടെ പരിശോധനയുണ്ടായില്ല ശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം  ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 760,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              height: 90,
              width: 430,
              decoration: BoxDecoration(
                color: Color(0xFF1B3358),
              ),
              child: Center(
                child: Icon(
                  isExpanded ? Icons.keyboard_arrow_down : Icons
                      .keyboard_arrow_up,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
        if (isExpanded)
          Positioned(
            top: 760,
            left: 0,
            right: 0,
            child: Container(
              height: 90,
              width: 430,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isBookmarkPressed = !isBookmarkPressed;
                      });
                    },
                    icon: Icon(
                        isBookmarkPressed ? Icons.bookmark : Icons.bookmark_outline),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSharePressed = !isSharePressed;
                      });
                    },
                    icon: Icon(
                        isSharePressed ? Icons.share_rounded : Icons.share_outlined),
                    iconSize: 40,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}