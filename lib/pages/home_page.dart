import 'package:bava/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Text(
              "     CURATED\n AND LATEST",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // ListView.builder no longer wrapped in Expanded or SingleChildScrollView
        ListView.builder(
          shrinkWrap:
              true, // Allows the ListView to occupy only the necessary space
          physics:
              NeverScrollableScrollPhysics(), // Prevents scrolling inside this ListView
          itemCount: homeImages.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: 20),
              constraints: BoxConstraints(maxHeight: 300),
              width: double.maxFinite,
              child: Image.network(
                homeImages[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
