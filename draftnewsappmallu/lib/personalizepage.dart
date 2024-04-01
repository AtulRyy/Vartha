import 'package:flutter/material.dart';

class PersonalizePage extends StatefulWidget {
  const PersonalizePage({super.key});

  @override
  State<PersonalizePage> createState() => _PersonalizePageState();
}

class _PersonalizePageState extends State<PersonalizePage> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hello, Aromal!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.06, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Choose your interests..",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.06, // Responsive font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: screenWidth * 0.04, // Responsive spacing
                      runSpacing: screenWidth * 0.03, // Responsive spacing
                      alignment: WrapAlignment.start,
                      children: <Widget>[
                        buildElevatedButton('Sports', isPressed1, () {
                          setState(() {
                            isPressed1 = !isPressed1;
                          });
                        }),
                        buildElevatedButton('Politics', isPressed2, () {
                          setState(() {
                            isPressed2 = !isPressed2;
                          });
                        }),
                        buildElevatedButton('Entertainment', isPressed3, () {
                          setState(() {
                            isPressed3 = !isPressed3;
                          });
                        }),
                        buildElevatedButton('Technology', isPressed4, () {
                          setState(() {
                            isPressed4 = !isPressed4;
                          });
                        }),
                        buildElevatedButton('Weather', isPressed5, () {
                          setState(() {
                            isPressed5 = !isPressed5;
                          });
                        }),
                        buildElevatedButton('Food', isPressed6, () {
                          setState(() {
                            isPressed6 = !isPressed6;
                          });
                        }),
                      ],
                    ),
                    SizedBox(height: 240),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.05, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.08,
                              vertical: screenWidth * 0.04),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: Colors.lightBlue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildElevatedButton(String text, bool isPressed, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        side: BorderSide(color: Colors.blue, width: 2),
        primary: isPressed ? Colors.blue[100] : Colors.white,
      ),
    );
  }
}
