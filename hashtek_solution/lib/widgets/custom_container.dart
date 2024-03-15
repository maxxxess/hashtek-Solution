import 'package:flutter/material.dart';
import 'package:hashtek_solution/const/textstyle.dart';
import 'package:hashtek_solution/models/country_data.dart';
import 'package:hashtek_solution/pages/country_page.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  String selectedText = 'Select Country';

  void navigateToCountryPage(List<TextWithImage> textItems) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CountryPage(
          textItems: textItems,
        ),
      ),
    );
    if (result != null) {
      setState(() {
        selectedText = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToCountryPage([
          /*  TextWithImage(text: 'Text 1', imageUrl: ''),
              TextWithImage(text: 'Text 2', imageUrl: ''),
              TextWithImage(text: 'Text 3', imageUrl: ''),*/
          // Add more text items as needed
        ]);
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200), color: Colors.white10),
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          padding: EdgeInsets.only(left: 15, right: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.flag,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '  Country',
                    style: myStyle(Colors.white, 16, FontWeight.w400),
                  )
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        selectedText,
                        style: myStyle(Colors.white, 16, FontWeight.w400),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 16,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          )),
    );
  }
}
/*CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(imageUrl),
          ), */

/*Text(
                    selectedText,
                    style: myStyle(Colors.white, 16, FontWeight.w400),
                  ), */