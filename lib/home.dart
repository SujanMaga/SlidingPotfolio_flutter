// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ach(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            type,
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }

  specialized(icon, tech) {
    return Container(
      height: 110,
      width: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              tech,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.35, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  child: Image.asset(
                    "assets/john.png",
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .5),
                  child: Column(
                    children: [
                      Text(
                        "John Cena",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text("Developer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ))
                    ],
                  )),
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 20, 20),
            child: Container(
                height: 500,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ach("30", " Projects"),
                          ach("90", " Messages"),
                          ach("29", " Clients"),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Specialized In",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              specialized(Icons.html, "HTML"),
                              specialized(Icons.css, "CSS"),
                              specialized(Icons.javascript, "JavaScript"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              specialized(Icons.php, "PHP"),
                              specialized(Icons.wordpress, "Wordpress"),
                              specialized(Icons.android, "Android"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              specialized(Icons.account_tree, "Networking"),
                              specialized(Icons.cloud, "Cloud"),
                              specialized(Icons.bar_chart, "Data "),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
