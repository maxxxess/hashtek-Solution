import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hashtek_solution/const/textstyle.dart';
import 'package:hashtek_solution/widgets/custom_button.dart';
import 'package:hashtek_solution/widgets/custom_listtile.dart';
import 'package:hashtek_solution/widgets/custom_navigationbar.dart';
import 'package:hashtek_solution/widgets/custom_container.dart';

class ProfilePage extends StatefulWidget {

  ProfilePage({super.key, });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    'My Profile',
                    style: myStyle(Colors.white, 22, FontWeight.w500),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/326446168_577832090441405_1242570406939611104_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGTo2jMCwGDyyGJUO2nNNnRVgEYgqYnjZNWARiCpieNk6tkHUtwK3mu3kjo8AYn_6u0FkjIuEzA4WoXEkE6L85D&_nc_ohc=k1OGUuS3pJIAX_RV1S-&_nc_ht=scontent.fdac24-3.fna&oh=00_AfBzkc17mD-6COHdx79c_BqzDN1KaxHj8UnuB09TriMhRA&oe=65F5CD32'),
                    ),
                    Text(
                      'Micheal Watson',
                      style: myStyle(Colors.white, 18, FontWeight.w500),
                    ),
                    Text(
                      '(203)2563-8542',
                      style: myStyle(Colors.white, 16, FontWeight.w300),
                    )
                  ],
                ),
              ),
              flex: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Divider(
                thickness: 0.5,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  CustomListTile(
                    title: 'Profile',
                    customIcon: Icons.person_3_outlined,
                  ),
                  CustomListTile(
                    title: 'Favorite',
                    customIcon: Icons.star_border,
                  ),

                  /*  CustomListTile(
                    title: 'Coutry',
                    customIcon: Icons.flag,
                   
                  ),*/
                  CustomContainer(
              
                  ),
                  CustomListTile(
                    title: 'Notification',
                    customIcon: Icons.notifications_none_sharp,
                  ),
                  CustomListTile(
                    title: 'Settings',
                    customIcon: Icons.settings,
                  ),

                  CustomListTile(
                    title: 'Help',
                    customIcon: Icons.help,
                  ),
                  // Add more custom tiles as needed
                ],
              ),
              flex: 59,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    CustomButton(
                      text: 'Logout',
                      onPressed: () {},
                    ),
                    CustomNavigation()
                  ],
                ),
              ),
              flex: 19,
            )
          ],
        ),
      ),
    );
  }
}
