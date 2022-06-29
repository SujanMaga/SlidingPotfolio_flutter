// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/john.png",
              ),
            ),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .57),
                child: Column(
                  children: [
                    Text(
                      "Hello it's me ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "John Cena",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text("Developer",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 110,
                      height: 40,
                      child: ElevatedButton(
                        child: Text(
                          "Hire Me",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
