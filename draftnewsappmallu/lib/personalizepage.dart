import 'package:flutter/material.dart';

class PersonalizePage extends StatefulWidget {
  const PersonalizePage({Key? key}) : super(key: key);

  @override
  State<PersonalizePage> createState() => _PersonalizePageState();
}

class _PersonalizePageState extends State<PersonalizePage> {
  List<String> interests = ['Sports', 'Politics', 'Entertainment', 'Technology', 'Weather', 'Food' , 'Local News'];
  List<bool> isPressedList = List.filled(7, false);
  List<String> selectedInterests = [];

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
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Choose your interests..",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(
                        interests.length,
                            (index) => buildElevatedButton(
                          interests[index],
                          isPressedList[index],
                              () {
                            setState(() {
                              isPressedList[index] = !isPressedList[index];
                              if (isPressedList[index]) {
                                selectedInterests.add(interests[index]);
                              } else {
                                selectedInterests.remove(interests[index]);
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 240),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Use the selectedInterests list for your backend operations
                          print(selectedInterests);
                        },
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.08,
                            vertical: screenWidth * 0.04,
                          ),
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

  Widget buildElevatedButton(
      String text, bool isPressed, VoidCallback onPressed) {
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
