import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  @override
  _CustomNavigationState createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15,left: 10,right: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(color: Colors.white, width: 0.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Positioned(
                    bottom: 30,
                    left: MediaQuery.of(context).size.width * 0.46,
                    child: CircleAvatar(
                      maxRadius: 35,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.face,
                            size: 30,
                            color: Colors.black,
                          )),
                    )),
                IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
