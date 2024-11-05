import 'package:flutter/material.dart';

import '../widgets/CustomNavBar.dart';
import '../widgets/MoviePageButtons.dart';
import '../widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              "images/1.jpg",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                            ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8
                              )
                            ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "images/1.jpg",
                              height: 250,
                              width: 180,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20 , top: 60),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                              )
                            ]
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  MoviePageButtons(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12 , horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Frozen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Description :",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "It follows Anna, the princess of Arendelle, who sets off on a journey with the iceman Kristoff, his reindeer Sven, and the snowman Olaf, to find her estranged sister Elsa after she accidentally traps their kingdom in eternal winter .",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  RecommendWidget(),
                ],
              )),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}