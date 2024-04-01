import 'package:flutter/material.dart';
import 'package:untitled/page1.dart';
import 'package:untitled/page2.dart';
class page3 extends StatelessWidget {
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
                    MaterialPageRoute(builder: (context) => page1()),
                  );
                }
                else if (details.primaryVelocity! > 0) {
                  // Swiped left
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page2()),
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
            'lib/assets/img3.jpg',
            height: 457,
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
              child:Text(
                  'സദാനന്ദ ഗൗഡ ബിജെപി വിട്ടേക്കുമെന്ന് സൂചന; മൈസൂരുവിൽ കോൺഗ്രസ് സ്ഥാനാർഥിയായേക്കും',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
                SizedBox(height: 5),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                  'മൈസൂരുവിൽ വൊക്കലിഗ വിഭാഗത്തിൽനിന്നുള്ള സ്ഥാനാർഥിയെ മത്സരിപ്പിക്കാനാണ് കോൺഗ്രസ് ശ്രമിക്കുന്നത്. പാർട് സീറ്റ് നിഷേധിച്ചതിനെ തുടർന്ന് മുൻ മുഖ്യമന്ത്രി ജഗദീഷ് ഷെട്ടറും കഴിഞ്ഞ വർഷം നിയമസഭാ തിരഞ്ഞെടുപ്പിനു മത്സരിച്ചെങ്കിലും പരാജയപ്പെട്ടു. ജനുവരിയിൽ ബിജെപിയിൽ തിരിച്ചെത്തിയ ഷെട്ടർ രാജീവ് ചന്ദ്രശേഖർ സർക്കാര റിസോർട്ട് ഉദ്ഘാടനം ചെയ്തപ്പോൾ അദ്ദേഹത്തിന്റെ കുടുംബാംഗങ്ങൾ പങ്കെടുത്തിരുന്നു.',
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