import 'package:flutter/material.dart';
import 'package:hashtek_solution/const/textstyle.dart';

class CustomListTile extends StatefulWidget {
  final String title;

  final IconData customIcon;

  CustomListTile({required this.title, required this.customIcon,});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.only(left: 10, right: 5),
      child: ListTile(
          iconColor: Colors.white,
          tileColor: Colors.white10,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(200)),
          leading: Icon(
            widget.customIcon,
            size: 18,
          ),
          title: Text(
            widget.title,
            style: myStyle(Colors.white, 16, FontWeight.w400),
          ),
          onTap: () {
            // Add custom onTap functionality here
            print('${widget.title} tapped!');
          },
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
              ))
          // You can add more customization options for ListTile as needed
          ),
    );
  }
}
/*CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(imageUrl),
          ), */

