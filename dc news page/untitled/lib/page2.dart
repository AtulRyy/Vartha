import 'package:flutter/material.dart';
import 'package:untitled/page1.dart';
import 'package:untitled/page3.dart';
class page2 extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => page3()),
                  );
                }
                else if (details.primaryVelocity! > 0) {
                  // Swiped left
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page1()),
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
  bool isExpanded = false;
  bool isBookmarkPressed = false;
  bool isSharePressed = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 36,
          left: 0,
          right: 0,
          child: Image.asset(
            'lib/assets/img2.jpg',
            height: 457,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 390,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(top: 10, left: 2, right: 2),            height: 464,
            width: 430,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Align text to the top
              children: [
                SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
                child:   Text(
                  'രാജീവ് ചന്ദ്രശേഖറുമായി കൂട്ടു ചേർന്നപ്പോൾ അന്വേഷണം നിലച്ചു; ഇ.പി പറയുന്നത്',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
                SizedBox(height: 5),Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                  'കേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു. വൈദേഹം റിസോർട്ടുമായി എകേന്ദ്രമന്ത്രി രാജീവ് ചന്ദ്രശേഖറിന്റെ നേതൃത്വത്തിലുള്ള റിസോർട്ടാണ് നിരാമയ. രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു. ',
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
                  isExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
        ),
        if (isExpanded)
          Positioned(
            top: 760, // Adjust position as needed
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
                    icon: Icon(isBookmarkPressed ? Icons.bookmark : Icons.bookmark_outline),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSharePressed = !isSharePressed;
                      });
                    },
                    icon: Icon(isSharePressed ? Icons.share_rounded : Icons.share_outlined),
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