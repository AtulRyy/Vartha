import 'package:flutter/material.dart';

class PersonalizePage extends StatefulWidget {
  const PersonalizePage({super.key});

  @override
  State<PersonalizePage> createState() => _PersonalizePageState();
}

class _PersonalizePageState extends State<PersonalizePage> {
  bool isPressed1=false;
  bool isPressed2=false;
  bool isPressed3=false;
  bool isPressed4=false;
  bool isPressed5=false;
  bool isPressed6=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Hello, Aromal!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Choose your interests..",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    alignment: WrapAlignment.start,
                    children:  <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed1 = !isPressed1;
                          });
                        },
                        child: Text('Sports',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed1 ? Colors.blue[100] : Colors.white,

                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed2 = !isPressed2;
                          });
                        },
                        child: Text('Politics',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed2 ? Colors.blue[100] : Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed3 = !isPressed3;
                          });
                        },
                        child: Text('Entertainment',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed3 ? Colors.blue[100] : Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed4 = !isPressed4;
                          });
                        },
                        child: Text('Technology',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed4 ? Colors.blue[100] : Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed5 = !isPressed5;
                          });
                        },
                        child: Text('Weather',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed5 ? Colors.blue[100] : Colors.white,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed6 = !isPressed6;
                          });
                        },
                        child: Text('Food',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side: BorderSide(color: Colors.blue, width: 2),
                          primary: isPressed6 ? Colors.blue[100] : Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  Center(
                    child: ElevatedButton(onPressed: (){},
                        child:  Text('SUBMIT',
                            style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                         ),
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
    );



  }
}
