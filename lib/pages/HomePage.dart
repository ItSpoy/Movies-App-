import 'package:flutter/material.dart';
import 'package:movies_app/widgets/NewMoviesWidget.dart';
import 'package:movies_app/widgets/upcompingWidget.dart';

import '../widgets/CustomNavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 35, 
                horizontal: 15,
              ),
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Souhaiel !",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "What To Watch ?",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 21,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    // Images 
                    child: Image.asset(
                      "images/profile.jpg",
                      height: 60,
                      width: 60,
                      ),
                      borderRadius: BorderRadius.circular(20),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Color(0xFF292B37),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                    ),
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle:TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const upcompingWidget(),
            const SizedBox(height: 15),
            const NewMoviesWidget(),
          ],
        ) ,
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}