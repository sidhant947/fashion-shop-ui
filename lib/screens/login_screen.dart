import 'package:bava/constant.dart';
import 'package:bava/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final List<String> quotes = [
    "Fashion is the armor to survive the reality of everyday life. – Bill Cunningham",
    "Style is a way to say who you are without having to speak. – Rachel Zoe",
    "In order to be irreplaceable one must always be different. – Coco Chanel",
    "Clothes mean nothing until someone lives in them. – Marc Jacobs",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            logInImage,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 400,
                child: PageView.builder(
                  itemCount: quotes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      height: 200,
                      child: Center(
                          child: Text(
                        quotes[index],
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        height: 50,
                        child: Center(child: Text("Sign Up")),
                      ),
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue[800],
                        height: 50,
                        child: Center(
                            child: Text(
                          "Continnue with Facebook",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Text(
                        "Continue as Guest",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
