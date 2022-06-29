// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  port(lang, appName, star) {
    return SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width * .96,
      child: Card(
        color: Colors.grey[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              lang,
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 13),
            Text(
              appName,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 13),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.white),
                    Text(star, style: TextStyle(color: Colors.white)),
                  ],
                ),
                FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("My Projects"),
          backgroundColor: Colors.grey[800],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  port("Flutter", "A Portfolio App", "10"),
                  SizedBox(
                    height: 10,
                  ),
                  port("Java", "Course Management System", "30"),
                  SizedBox(
                    height: 10,
                  ),
                  port("Python", "Hangman Game", "20"),
                  SizedBox(
                    height: 10,
                  ),
                  port("Python", "Compound interest Calculator", "20"),
                  SizedBox(
                    height: 10,
                  ),
                  port("Flutter", "ToDo App", "20"),
                  SizedBox(
                    height: 10,
                  ),
                  port("Python", "Morse code translator", "20"),
                  SizedBox(
                    height: 10,
                  ),
                ]),
              )),
        ));
  }
}
