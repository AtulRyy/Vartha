import 'package:flutter/material.dart';
void main() {
  runApp(Page1());
}
class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              // Swiped left
              setState(() {
                if (currentIndex < dataList.length - 1) {
                  currentIndex++;
                }
                dataList[currentIndex]['isExpanded'] = false;
              });
            } else if (details.primaryVelocity! > 0) {
              // Swiped right
              setState(() {
                if (currentIndex > 0) {
                  currentIndex--;
                }
                dataList[currentIndex]['isExpanded'] = false;
              });
            }
          },
          child: Stack(
            children: [
              Positioned(
                top: 36,
                left: 0,
                right: 0,
                child: Image.asset(
                  dataList[currentIndex]['imagePath'],
                  height: 456,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 350,
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
                          dataList[currentIndex]['title'],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          dataList[currentIndex]['description'],
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 720,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      dataList[currentIndex]['isExpanded'] =
                      !(dataList[currentIndex]['isExpanded'] ?? false);
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 430,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B3358),
                    ),
                    child: Center(
                      child: Icon(
                        (dataList[currentIndex]['isExpanded'] ?? false)
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
              if (dataList[currentIndex]['isExpanded'] ?? false)
                Positioned(
                  top: 720, // Adjust position as needed
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 430,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              dataList[currentIndex]['isBookmarkPressed'] =
                              !(dataList[currentIndex]
                              ['isBookmarkPressed'] ??
                                  false);
                            });
                          },
                          icon: Icon((dataList[currentIndex]
                          ['isBookmarkPressed'] ??
                              false)
                              ? Icons.bookmark
                              : Icons.bookmark_outline),
                          iconSize: 40,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              dataList[currentIndex]['isSharePressed'] =
                              !(dataList[currentIndex]['isSharePressed'] ??
                                  false);
                            });
                          },
                          icon: Icon((dataList[currentIndex]['isSharePressed'] ??
                              false)
                              ? Icons.share_rounded
                              : Icons.share_outlined),
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}



