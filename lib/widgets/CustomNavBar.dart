import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.white70,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "categorypage");
            },
            child: Icon(
              Icons.category,
              size: 35,
              color: Colors.white70,
            ),
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.favorite_border,
              size: 35,
              color: Colors.white70,
            ),
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}